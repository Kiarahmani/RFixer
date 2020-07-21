
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
  102    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  103    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  104    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  105    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  106    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  107    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  108    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  109    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  110    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  111    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  112    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  113    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  114    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  115    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  116    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  117    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  118    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  119    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  120    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  121    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  122    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  123    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  124    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  125    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  126    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  127    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  128    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  129    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  130    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  131    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  132    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  133    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  134    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  135    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  136    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  137    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  138    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  139    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  140    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  141    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  142    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  143    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  144    |  2     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  145    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  146    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  147    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  148    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  149    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  150    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  151    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  152    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  153    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  154    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  155    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  156    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  157    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  158    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  159    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  160    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  161    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  162    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  163    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  164    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  165    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  166    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  167    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  168    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  169    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  170    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  171    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  172    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  173    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  174    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  175    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  176    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  177    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  178    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  179    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  180    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  181    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  182    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  183    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  184    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  185    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  186    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  187    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  188    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  189    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  190    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  191    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  192    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  193    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  194    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  195    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  196    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  197    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  198    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  199    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  200    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  201    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  202    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  203    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  204    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  205    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  206    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  207    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  208    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  209    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  210    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  211    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  212    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  213    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  214    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  215    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  216    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  217    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  218    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  219    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  220    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  221    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  222    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  223    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  224    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  225    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  226    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  227    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  228    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  229    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  230    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  231    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  232    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  233    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  234    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  235    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  236    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  237    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  238    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  239    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  240    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  241    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  242    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  243    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  244    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  245    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  246    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  247    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  248    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  249    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  250    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  251    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  252    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  253    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  254    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  255    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  256    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  257    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  258    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  259    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  260    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  261    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  262    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  263    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  264    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  265    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  266    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  267    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  268    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  269    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  270    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  271    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  272    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  273    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  274    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  275    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  276    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  277    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  278    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  279    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  280    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  281    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  282    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  283    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  284    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  285    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  286    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  287    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  288    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  289    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  290    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  291    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  292    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  293    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  294    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  295    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  296    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  297    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  298    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  299    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  300    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  301    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  302    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  303    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  304    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  305    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  306    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  307    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  308    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  309    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  310    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  311    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  312    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  313    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  314    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  315    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  316    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  317    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  318    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  319    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  320    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  321    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  322    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  323    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  324    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  325    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  326    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  327    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  328    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  329    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  330    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  331    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  332    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  333    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  334    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  335    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  336    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  337    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  338    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  339    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  340    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  341    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  342    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  343    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  344    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  345    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  346    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  347    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  348    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  349    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  350    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  351    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  352    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  353    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  354    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  355    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  356    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  357    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  358    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  359    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  360    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  361    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  362    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  363    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  364    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  365    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■})■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  366    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  367    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  368    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  369    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  370    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  371    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  372    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  373    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  374    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  375    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  376    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  377    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  378    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  379    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  380    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  381    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  382    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  383    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  384    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  385    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  386    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  387    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  388    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  389    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  390    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  391    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  392    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  393    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  394    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  395    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  396    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  397    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  398    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  399    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  400    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  401    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  402    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  403    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  404    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  405    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  406    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)■) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  407    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  408    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  409    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  410    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  411    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  412    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  413    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  414    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  415    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  416    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  417    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  418    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  419    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  420    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  421    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  422    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  423    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  424    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  425    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  426    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  427    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  428    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  429    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  430    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  431    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  432    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  433    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  434    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  435    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  436    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  437    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  438    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  439    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  440    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  441    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  442    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  443    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  444    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  445    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  446    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  447    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  448    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  449    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  450    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  451    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  452    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  453    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  454    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  455    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  456    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  457    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  458    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  459    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  460    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  461    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  462    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  463    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  464    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  465    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  466    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  467    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  468    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  469    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  470    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  471    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  472    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  473    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  474    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  475    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  476    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  477    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  478    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  479    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  480    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  481    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  482    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  483    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  484    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  485    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  486    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  487    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  488    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  489    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  490    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  491    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  492    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  493    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  494    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  495    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  496    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  497    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  498    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  499    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  500    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  501    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  502    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  503    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  504    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  505    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  506    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  507    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  508    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  509    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  510    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  511    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  512    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  513    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  514    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  515    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  516    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  517    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  518    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  519    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  520    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  521    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  522    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  523    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  524    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  525    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  526    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  527    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  528    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  529    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  530    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  531    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  532    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  533    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  534    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  535    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  536    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  537    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  538    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  539    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  540    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  541    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  542    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  543    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  544    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  545    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  546    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  547    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  548    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  549    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  550    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  551    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  552    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  553    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  554    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  555    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  556    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  557    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  558    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  559    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  560    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  561    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  562    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  563    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  564    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  565    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  566    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  567    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  568    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  569    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  570    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  571    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  572    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  573    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  574    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  575    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  576    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  577    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  578    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  579    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  580    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  581    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  582    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  583    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  584    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  585    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  586    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  587    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  588    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  589    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  590    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  591    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  592    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  593    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  594    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  595    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  596    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  597    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  598    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  599    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  600    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  601    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  602    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  603    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  604    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  605    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  606    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  607    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  608    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  609    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  610    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  611    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  612    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  613    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  614    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  615    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  616    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  617    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  618    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  619    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  620    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  621    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  622    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  623    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  624    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  625    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  626    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  627    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  628    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  629    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  630    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  631    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  632    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  633    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  634    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  635    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  636    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  637    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  638    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  639    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  640    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  641    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  642    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  643    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  644    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  645    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  646    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  647    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  648    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  649    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  650    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  651    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  652    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  653    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  654    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  655    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  656    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  657    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  658    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  659    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  660    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  661    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  662    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  663    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  664    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  665    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  666    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  667    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  668    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  669    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  670    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  671    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  672    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  673    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  674    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  675    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  676    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  677    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  678    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  679    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  680    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  681    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  682    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  683    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  684    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  685    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  686    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  687    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  688    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  689    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  690    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  691    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  692    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  693    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  694    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  695    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  696    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  697    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  698    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  699    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  700    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  701    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  702    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  703    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  704    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  705    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  706    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  707    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  708    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  709    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  710    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  711    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  712    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  713    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  714    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  715    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  716    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  717    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  718    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  719    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  720    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  721    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  722    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  723    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  724    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  725    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  726    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  727    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  728    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  729    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  730    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  731    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  732    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  733    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  734    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  735    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  736    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  737    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  738    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  739    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  740    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  741    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  742    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  743    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  744    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  745    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  746    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  747    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  748    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  749    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  750    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  751    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  752    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  753    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  754    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  755    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  756    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  757    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  758    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  759    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  760    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  761    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  762    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  763    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  764    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  765    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  766    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  767    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  768    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  769    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  770    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  771    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  772    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  773    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  774    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  775    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  776    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  777    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  778    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  779    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  780    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  781    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  782    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  783    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  784    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  785    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  786    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  787    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  788    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  789    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  790    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  791    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  792    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  793    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  794    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  795    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  796    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  797    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  798    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  799    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  800    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  801    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  802    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  803    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  804    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  805    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  806    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  807    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  808    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  809    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  810    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  811    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  812    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  813    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  814    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  815    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  816    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  817    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  818    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  819    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  820    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  821    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  822    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  823    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  824    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  825    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  826    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  827    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  828    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  829    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  830    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  831    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  832    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  833    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  834    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  835    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  836    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  837    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  838    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  839    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  840    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  841    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  842    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  843    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  844    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  845    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  846    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  847    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  848    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  849    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  850    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  851    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  852    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  853    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  854    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  855    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  856    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  857    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  858    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  859    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  860    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  861    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  862    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  863    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  864    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  865    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  866    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  867    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  868    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  869    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  870    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  871    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  872    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  873    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  874    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  875    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  876    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  877    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  878    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  879    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  880    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  881    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  882    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  883    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  884    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  885    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  886    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  887    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  888    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  889    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  890    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  891    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  892    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  893    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  894    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  895    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  896    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  897    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  898    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  899    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  900    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  901    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  902    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  903    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  904    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  905    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  906    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  907    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  908    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  909    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  910    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  911    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  912    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  913    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  914    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  915    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  916    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  917    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  918    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  919    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  920    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  921    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  922    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  923    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  924    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  925    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  926    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  927    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  928    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  929    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  930    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  931    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  932    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  933    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  934    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  935    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  936    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  937    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  938    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  939    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  940    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  941    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  942    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  943    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  944    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  945    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  946    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  947    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  948    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  949    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  950    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  951    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  952    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  953    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  954    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  955    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  956    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  957    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  958    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  959    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  960    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  961    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  962    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  963    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  964    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  965    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  966    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  967    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  968    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  969    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  970    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  971    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  972    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  973    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  974    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  975    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  976    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  977    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  978    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  979    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  980    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  981    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  982    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  983    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  984    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  985    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  986    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  987    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  988    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  989    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  990    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  991    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  992    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  993    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  994    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  995    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  996    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  997    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  998    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  999    |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1000   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1001   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1002   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1003   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1004   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1005   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1006   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1007   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1008   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1009   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1010   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1011   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1012   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1013   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1014   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1015   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1016   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1017   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1018   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1019   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1020   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1021   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1022   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1023   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1024   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1025   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1026   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1027   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1028   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1029   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1030   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1031   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1032   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1033   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1034   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1035   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1036   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1037   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1038   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1039   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1040   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1041   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1042   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1043   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1044   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1045   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1046   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1047   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1048   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1049   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1050   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1051   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1052   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1053   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1054   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1055   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1056   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1057   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1058   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1059   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1060   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1061   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1062   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1063   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1064   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1065   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1066   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1067   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1068   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1069   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1070   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1071   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1072   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1073   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1074   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1075   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1076   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1077   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1078   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1079   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1080   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1081   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1082   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1083   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1084   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1085   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1086   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1087   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1088   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1089   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1090   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1091   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1092   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1093   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1094   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1095   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1096   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1097   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1098   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1099   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1100   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1101   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1102   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1103   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1104   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1105   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1106   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1107   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1108   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1109   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1110   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1111   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1112   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1113   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1114   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1115   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1116   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1117   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1118   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1119   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1120   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1121   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1122   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1123   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1124   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1125   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1126   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1127   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1128   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1129   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1130   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1131   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1132   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1133   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1134   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1135   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1136   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1137   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1138   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1139   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1140   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1141   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1142   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1143   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1144   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1145   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1146   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1147   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1148   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1149   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1150   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1151   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1152   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1153   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1154   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1155   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1156   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1157   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1158   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1159   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1160   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1161   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1162   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1163   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1164   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1165   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1166   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1167   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1168   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1169   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1170   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1171   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1172   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1173   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1174   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1175   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1176   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1177   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1178   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1179   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1180   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1181   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1182   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1183   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1184   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1185   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1186   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1187   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1188   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')(■){10})'fail dotstar or empty
  1189   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1190   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1191   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1192   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1193   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1194   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1195   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1196   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')(■){10})'fail dotstar or empty
  1197   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1198   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1199   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)■)P) )')([0-9]){10})'fail dotstar or empty
  1200   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)■) )')([0-9]){10})'fail dotstar or empty
  1201   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P)■)')([0-9]){10})'fail dotstar or empty
  1202   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )■)([0-9]){10})'fail dotstar or empty
  1203   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')(■){10})'fail dotstar or empty
  1204   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){■})'fail dotstar or empty
  1205   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})■fail dotstar or empty
  1206   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)■) )')([0-9]){10})'fail dotstar or empty
  1207   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P)■)')([0-9]){10})'fail dotstar or empty
  1208   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )■)([0-9]){10})'fail dotstar or empty
  1209   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')(■){10})'fail dotstar or empty
  1210   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){■})'fail dotstar or empty
  1211   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})■fail dotstar or empty
  1212   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■)■)')([0-9]){10})'fail dotstar or empty
  1213   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )■)([0-9]){10})'fail dotstar or empty
  1214   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')(■){10})'fail dotstar or empty
  1215   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){■})'fail dotstar or empty
  1216   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})■fail dotstar or empty
  1217   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)■)([0-9]){10})'fail dotstar or empty
  1218   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')(■){10})'fail dotstar or empty
  1219   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){■})'fail dotstar or empty
  1220   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})■fail dotstar or empty
  1221   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)(■){10})'fail dotstar or empty
  1222   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){■})'fail dotstar or empty
  1223   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})■fail dotstar or empty
  1224   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){■})'fail dotstar or empty
  1225   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})■fail dotstar or empty
  1226   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')■)'fail dotstar or empty
  1227   |  2     (((((((((((((((((((((((((((((((((((((((((((((SE)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})■fail dotstar or empty
  1228   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1229   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1230   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1231   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1232   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1233   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1234   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1235   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1236   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1237   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1238   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1239   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1240   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1241   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1242   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1243   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1244   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1245   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1246   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1247   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1248   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1249   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1250   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1251   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1252   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1253   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1254   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1255   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1256   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1257   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1258   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1259   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1260   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1261   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1262   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1263   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1264   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1265   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1266   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1267   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1268   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1269   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1270   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1271   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1272   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1273   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1274   |  3     (((((((((((((((((((((((((((((((((((((((((((((■■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1275   |  3     (((((((((((((((((((((((((((((((((((((((((((((■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1276   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1277   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1278   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1279   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1280   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1281   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1282   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1283   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1284   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1285   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1286   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1287   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1288   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1289   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1290   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1291   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1292   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1293   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1294   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1295   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1296   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1297   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1298   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1299   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1300   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1301   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1302   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1303   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1304   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1305   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1306   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1307   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1308   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1309   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1310   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1311   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1312   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1313   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1314   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1315   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1316   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1317   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1318   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1319   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1320   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1321   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1322   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1323   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1324   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1325   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1326   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1327   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1328   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1329   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1330   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1331   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1332   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1333   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1334   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1335   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1336   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1337   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1338   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1339   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1340   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1341   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1342   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1343   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1344   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1345   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1346   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1347   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1348   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1349   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1350   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1351   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1352   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1353   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1354   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1355   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1356   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1357   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1358   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1359   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1360   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1361   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1362   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1363   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1364   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1365   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1366   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1367   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1368   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1369   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1370   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1371   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1372   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1373   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1374   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1375   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1376   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1377   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1378   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1379   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1380   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1381   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1382   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1383   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1384   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1385   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1386   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1387   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1388   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1389   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1390   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1391   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1392   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1393   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1394   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1395   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1396   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1397   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1398   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1399   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1400   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1401   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1402   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1403   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1404   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1405   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1406   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1407   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1408   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1409   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1410   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1411   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1412   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1413   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1414   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1415   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1416   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1417   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1418   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1419   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1420   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1421   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1422   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1423   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1424   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1425   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1426   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1427   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1428   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1429   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1430   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1431   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1432   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1433   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1434   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1435   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1436   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1437   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1438   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1439   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1440   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1441   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1442   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1443   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1444   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1445   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1446   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1447   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1448   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1449   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1450   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1451   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1452   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1453   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1454   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1455   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1456   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1457   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1458   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1459   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1460   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1461   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1462   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1463   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1464   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1465   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1466   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1467   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1468   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1469   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1470   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1471   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1472   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1473   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1474   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1475   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1476   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1477   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1478   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1479   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1480   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1481   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1482   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1483   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1484   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1485   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1486   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1487   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1488   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1489   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1490   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1491   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1492   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1493   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1494   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1495   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1496   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■})■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1497   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1498   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1499   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1500   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1501   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1502   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1503   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1504   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1505   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1506   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1507   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1508   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1509   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1510   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1511   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1512   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1513   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1514   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1515   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1516   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1517   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1518   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1519   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1520   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1521   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1522   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1523   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1524   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1525   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1526   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1527   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1528   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1529   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1530   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1531   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1532   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1533   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1534   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1535   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1536   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1537   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)■) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1538   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1539   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1540   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1541   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1542   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1543   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1544   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1545   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1546   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1547   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1548   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1549   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1550   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1551   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1552   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1553   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1554   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1555   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1556   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1557   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1558   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1559   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1560   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1561   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1562   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1563   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1564   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1565   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1566   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1567   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1568   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1569   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1570   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1571   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1572   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1573   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1574   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1575   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1576   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1577   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1578   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1579   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1580   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1581   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1582   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1583   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1584   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1585   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1586   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1587   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1588   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1589   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1590   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1591   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1592   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1593   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1594   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1595   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1596   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1597   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1598   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1599   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1600   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1601   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1602   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1603   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1604   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1605   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1606   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1607   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1608   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1609   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1610   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1611   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1612   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1613   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1614   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1615   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1616   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1617   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1618   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1619   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1620   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1621   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1622   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1623   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1624   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1625   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1626   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1627   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1628   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1629   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1630   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1631   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1632   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1633   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1634   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1635   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1636   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1637   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1638   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1639   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1640   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1641   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1642   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1643   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1644   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1645   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1646   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1647   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1648   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1649   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1650   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1651   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1652   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1653   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1654   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1655   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1656   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1657   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1658   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1659   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1660   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1661   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1662   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1663   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1664   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1665   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1666   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1667   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1668   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1669   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1670   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1671   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1672   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1673   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1674   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1675   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1676   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1677   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1678   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1679   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1680   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1681   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1682   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1683   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1684   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1685   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1686   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1687   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1688   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1689   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1690   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1691   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1692   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1693   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1694   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1695   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1696   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1697   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1698   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1699   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1700   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1701   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1702   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1703   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1704   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1705   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1706   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1707   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1708   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1709   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1710   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1711   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1712   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1713   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1714   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1715   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1716   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1717   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1718   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1719   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1720   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1721   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1722   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1723   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1724   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1725   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1726   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1727   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1728   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1729   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1730   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1731   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1732   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1733   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1734   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1735   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1736   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1737   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1738   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1739   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1740   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1741   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1742   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1743   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1744   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1745   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1746   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1747   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1748   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1749   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1750   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1751   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1752   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1753   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1754   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1755   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1756   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1757   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1758   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1759   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1760   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1761   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1762   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1763   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1764   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1765   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1766   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1767   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1768   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1769   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1770   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1771   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1772   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1773   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1774   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1775   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1776   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1777   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1778   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1779   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1780   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1781   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1782   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1783   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1784   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1785   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1786   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1787   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1788   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1789   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1790   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1791   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1792   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1793   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1794   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1795   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1796   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1797   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1798   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1799   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1800   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1801   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1802   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1803   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1804   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1805   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1806   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1807   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1808   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1809   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1810   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1811   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1812   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1813   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1814   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1815   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1816   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1817   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1818   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1819   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1820   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1821   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1822   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1823   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1824   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1825   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1826   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1827   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1828   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1829   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1830   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1831   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1832   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1833   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1834   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1835   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1836   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1837   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1838   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1839   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1840   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1841   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1842   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1843   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1844   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1845   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1846   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1847   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1848   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1849   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1850   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1851   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1852   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1853   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1854   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1855   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1856   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1857   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1858   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1859   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1860   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1861   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1862   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1863   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1864   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1865   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1866   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1867   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1868   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1869   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1870   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1871   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1872   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1873   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1874   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1875   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1876   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1877   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1878   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1879   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1880   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1881   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1882   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1883   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1884   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1885   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1886   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1887   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1888   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1889   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1890   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1891   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1892   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1893   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1894   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1895   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1896   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1897   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1898   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1899   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1900   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1901   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1902   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1903   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1904   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1905   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1906   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1907   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1908   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1909   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1910   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1911   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1912   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1913   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1914   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1915   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1916   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1917   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1918   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1919   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1920   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1921   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1922   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1923   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1924   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1925   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1926   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1927   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1928   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1929   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1930   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1931   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1932   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1933   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1934   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1935   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1936   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1937   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1938   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1939   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1940   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1941   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1942   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1943   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1944   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1945   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1946   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1947   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1948   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1949   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1950   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1951   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1952   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1953   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1954   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1955   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1956   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1957   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1958   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1959   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1960   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1961   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1962   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1963   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1964   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1965   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1966   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1967   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1968   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1969   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1970   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1971   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1972   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  1973   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  1974   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  1975   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  1976   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  1977   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  1978   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  1979   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  1980   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1981   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1982   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1983   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1984   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1985   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1986   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1987   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1988   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1989   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1990   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1991   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1992   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1993   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1994   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1995   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1996   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1997   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1998   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  1999   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2000   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2001   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2002   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2003   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2004   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2005   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2006   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2007   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2008   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2009   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2010   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2011   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2012   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2013   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2014   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2015   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2016   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2017   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2018   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2019   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2020   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2021   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2022   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2023   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2024   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2025   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2026   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2027   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2028   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2029   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2030   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2031   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2032   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2033   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2034   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2035   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2036   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2037   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2038   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2039   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2040   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2041   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2042   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2043   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2044   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2045   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2046   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2047   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2048   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2049   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2050   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2051   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2052   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2053   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2054   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2055   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2056   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2057   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2058   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2059   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2060   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2061   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2062   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2063   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2064   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2065   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2066   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2067   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2068   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2069   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2070   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2071   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2072   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2073   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2074   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2075   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2076   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2077   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2078   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2079   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2080   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2081   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2082   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2083   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2084   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2085   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2086   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2087   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2088   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2089   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2090   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2091   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2092   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2093   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2094   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2095   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2096   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2097   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2098   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2099   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2100   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2101   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2102   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2103   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2104   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2105   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2106   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2107   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2108   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2109   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2110   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2111   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2112   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2113   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2114   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2115   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2116   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2117   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2118   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2119   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2120   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2121   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2122   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2123   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2124   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2125   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2126   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2127   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2128   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2129   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2130   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2131   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2132   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2133   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2134   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2135   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2136   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2137   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2138   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2139   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2140   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2141   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2142   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2143   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2144   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2145   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2146   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2147   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2148   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2149   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2150   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2151   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2152   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2153   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2154   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2155   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2156   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2157   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2158   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2159   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2160   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2161   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2162   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2163   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2164   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2165   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2166   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2167   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2168   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2169   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2170   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2171   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2172   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2173   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2174   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2175   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2176   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2177   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2178   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2179   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2180   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2181   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2182   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2183   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2184   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2185   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2186   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2187   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2188   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2189   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2190   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2191   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2192   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2193   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2194   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2195   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2196   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2197   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2198   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2199   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2200   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2201   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2202   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2203   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2204   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2205   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2206   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2207   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2208   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2209   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2210   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2211   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2212   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2213   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2214   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2215   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2216   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2217   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2218   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2219   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2220   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2221   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2222   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2223   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2224   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2225   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2226   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2227   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2228   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2229   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2230   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2231   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2232   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2233   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2234   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2235   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2236   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2237   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2238   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2239   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2240   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2241   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2242   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2243   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2244   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2245   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2246   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2247   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2248   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2249   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2250   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2251   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2252   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2253   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2254   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2255   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2256   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2257   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2258   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2259   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2260   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2261   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2262   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2263   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2264   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2265   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2266   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2267   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2268   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2269   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2270   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2271   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2272   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2273   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2274   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2275   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2276   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2277   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2278   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2279   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2280   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2281   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2282   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2283   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2284   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2285   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2286   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2287   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2288   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2289   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2290   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2291   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2292   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2293   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2294   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2295   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2296   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2297   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2298   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2299   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2300   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2301   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2302   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2303   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2304   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2305   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2306   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2307   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2308   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2309   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2310   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2311   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2312   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2313   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2314   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2315   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2316   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2317   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2318   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2319   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')(■){10})'fail dotstar or empty
  2320   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2321   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2322   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2323   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2324   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2325   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2326   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2327   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')(■){10})'fail dotstar or empty
  2328   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2329   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2330   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)■)P) )')([0-9]){10})'fail dotstar or empty
  2331   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)■) )')([0-9]){10})'fail dotstar or empty
  2332   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P)■)')([0-9]){10})'fail dotstar or empty
  2333   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )■)([0-9]){10})'fail dotstar or empty
  2334   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')(■){10})'fail dotstar or empty
  2335   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){■})'fail dotstar or empty
  2336   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})■fail dotstar or empty
  2337   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)■) )')([0-9]){10})'fail dotstar or empty
  2338   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P)■)')([0-9]){10})'fail dotstar or empty
  2339   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )■)([0-9]){10})'fail dotstar or empty
  2340   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')(■){10})'fail dotstar or empty
  2341   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){■})'fail dotstar or empty
  2342   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})■fail dotstar or empty
  2343   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■)■)')([0-9]){10})'fail dotstar or empty
  2344   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )■)([0-9]){10})'fail dotstar or empty
  2345   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')(■){10})'fail dotstar or empty
  2346   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){■})'fail dotstar or empty
  2347   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})■fail dotstar or empty
  2348   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)■)([0-9]){10})'fail dotstar or empty
  2349   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')(■){10})'fail dotstar or empty
  2350   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){■})'fail dotstar or empty
  2351   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})■fail dotstar or empty
  2352   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)(■){10})'fail dotstar or empty
  2353   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){■})'fail dotstar or empty
  2354   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})■fail dotstar or empty
  2355   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){■})'fail dotstar or empty
  2356   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})■fail dotstar or empty
  2357   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')■)'fail dotstar or empty
  2358   |  3     (((((((((((((((((((((((((((((((((((((((((((((■E)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})■fail dotstar or empty
  2359   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2360   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2361   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2362   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2363   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2364   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2365   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2366   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2367   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2368   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2369   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2370   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2371   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2372   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2373   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2374   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2375   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2376   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2377   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2378   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2379   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2380   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2381   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2382   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2383   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2384   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2385   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2386   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2387   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2388   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2389   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2390   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2391   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2392   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2393   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2394   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2395   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2396   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2397   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2398   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2399   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2400   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2401   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2402   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2403   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2404   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2405   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2406   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2407   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2408   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2409   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2410   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2411   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2412   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2413   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2414   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2415   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2416   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2417   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2418   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2419   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2420   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2421   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2422   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2423   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2424   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2425   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2426   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2427   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2428   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2429   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2430   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2431   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2432   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2433   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2434   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2435   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2436   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2437   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2438   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2439   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2440   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2441   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2442   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2443   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2444   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2445   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2446   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2447   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2448   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2449   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2450   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2451   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2452   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2453   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2454   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2455   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2456   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2457   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2458   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2459   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2460   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2461   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2462   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2463   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2464   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2465   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2466   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2467   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2468   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2469   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2470   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2471   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2472   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2473   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2474   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2475   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2476   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2477   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2478   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2479   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2480   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2481   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2482   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2483   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2484   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2485   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2486   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2487   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2488   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2489   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2490   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2491   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2492   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2493   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2494   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2495   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2496   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2497   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2498   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2499   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2500   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2501   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2502   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2503   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2504   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2505   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2506   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2507   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2508   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2509   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2510   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2511   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2512   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2513   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2514   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2515   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2516   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2517   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2518   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2519   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2520   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2521   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2522   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2523   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2524   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2525   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2526   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2527   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2528   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2529   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2530   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2531   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2532   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2533   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2534   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2535   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2536   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2537   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2538   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2539   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2540   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2541   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2542   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2543   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2544   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2545   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2546   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2547   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2548   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2549   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2550   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2551   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2552   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2553   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2554   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2555   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2556   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2557   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2558   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2559   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2560   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2561   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2562   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2563   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2564   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2565   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2566   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2567   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2568   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2569   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2570   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2571   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2572   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2573   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2574   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2575   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2576   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2577   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2578   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2579   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■})■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2580   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2581   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2582   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2583   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2584   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2585   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2586   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2587   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2588   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2589   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2590   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2591   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2592   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2593   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2594   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2595   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2596   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2597   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2598   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2599   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2600   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2601   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2602   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2603   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2604   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2605   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2606   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2607   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2608   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2609   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2610   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2611   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2612   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2613   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2614   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2615   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2616   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2617   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2618   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2619   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2620   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)■) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2621   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2622   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2623   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2624   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2625   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2626   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2627   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2628   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2629   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2630   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2631   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2632   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2633   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2634   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2635   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2636   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2637   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2638   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2639   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2640   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2641   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2642   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2643   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2644   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2645   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2646   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2647   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2648   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2649   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2650   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2651   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2652   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2653   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2654   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2655   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2656   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2657   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2658   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2659   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2660   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2661   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2662   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2663   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2664   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2665   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2666   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2667   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2668   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2669   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2670   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2671   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2672   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2673   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2674   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2675   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2676   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2677   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2678   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2679   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2680   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2681   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2682   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2683   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2684   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2685   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2686   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2687   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2688   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2689   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2690   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2691   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2692   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2693   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2694   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2695   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2696   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2697   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2698   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2699   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2700   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2701   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2702   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2703   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2704   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2705   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2706   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2707   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2708   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2709   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2710   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2711   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2712   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2713   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2714   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2715   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2716   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2717   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2718   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2719   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2720   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2721   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2722   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2723   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2724   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2725   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2726   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2727   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2728   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2729   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2730   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2731   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2732   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2733   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2734   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2735   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2736   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2737   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2738   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2739   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2740   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2741   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2742   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2743   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2744   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2745   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2746   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2747   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2748   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2749   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2750   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2751   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2752   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2753   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2754   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2755   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2756   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2757   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2758   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2759   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2760   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2761   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2762   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2763   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2764   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2765   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2766   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2767   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2768   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2769   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2770   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2771   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2772   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2773   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2774   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2775   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2776   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2777   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2778   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2779   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2780   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2781   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2782   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2783   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2784   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2785   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2786   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2787   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2788   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2789   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2790   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2791   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2792   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2793   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2794   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2795   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2796   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2797   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2798   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2799   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2800   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2801   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2802   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2803   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2804   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2805   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2806   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2807   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2808   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2809   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2810   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2811   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2812   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2813   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2814   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2815   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2816   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2817   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2818   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2819   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2820   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2821   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2822   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2823   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2824   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2825   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2826   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2827   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2828   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2829   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2830   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2831   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2832   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2833   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2834   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2835   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2836   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2837   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2838   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2839   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2840   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2841   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2842   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2843   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2844   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2845   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2846   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2847   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2848   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2849   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2850   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2851   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2852   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2853   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2854   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2855   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2856   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2857   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2858   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2859   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2860   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2861   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2862   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2863   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2864   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2865   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2866   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2867   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2868   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2869   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2870   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2871   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2872   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2873   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2874   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2875   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2876   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2877   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2878   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2879   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2880   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2881   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2882   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2883   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2884   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2885   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2886   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2887   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2888   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2889   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2890   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2891   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2892   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2893   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2894   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2895   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2896   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2897   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2898   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2899   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2900   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2901   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2902   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2903   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2904   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2905   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2906   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2907   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2908   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2909   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2910   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2911   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2912   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2913   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2914   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2915   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2916   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2917   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2918   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2919   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2920   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2921   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2922   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2923   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2924   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2925   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2926   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2927   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2928   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2929   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2930   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2931   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2932   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2933   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2934   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2935   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2936   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2937   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2938   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2939   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2940   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2941   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2942   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2943   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2944   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2945   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2946   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2947   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2948   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2949   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2950   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2951   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2952   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2953   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2954   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2955   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2956   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2957   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2958   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2959   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2960   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2961   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2962   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2963   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2964   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2965   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2966   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2967   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2968   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2969   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  2970   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  2971   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  2972   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  2973   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  2974   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  2975   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  2976   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2977   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2978   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2979   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2980   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2981   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2982   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2983   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2984   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2985   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2986   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2987   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2988   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2989   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2990   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2991   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2992   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2993   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2994   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2995   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2996   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2997   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  2998   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  2999   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3000   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3001   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3002   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3003   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3004   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3005   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3006   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3007   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3008   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3009   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3010   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3011   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3012   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3013   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3014   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3015   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3016   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3017   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3018   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3019   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3020   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3021   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3022   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3023   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3024   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3025   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3026   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3027   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3028   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3029   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3030   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3031   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3032   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3033   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3034   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3035   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3036   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3037   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3038   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3039   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3040   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3041   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3042   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3043   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3044   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3045   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3046   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3047   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3048   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3049   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3050   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3051   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3052   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3053   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3054   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3055   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3056   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3057   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3058   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3059   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3060   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3061   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3062   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3063   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3064   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3065   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3066   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3067   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3068   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3069   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3070   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3071   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3072   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3073   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3074   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3075   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3076   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3077   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3078   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3079   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3080   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3081   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3082   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3083   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3084   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3085   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3086   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3087   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3088   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3089   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3090   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3091   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3092   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3093   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3094   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3095   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3096   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3097   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3098   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3099   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3100   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3101   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3102   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3103   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3104   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3105   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3106   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3107   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3108   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3109   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3110   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3111   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3112   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3113   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3114   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3115   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3116   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3117   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3118   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3119   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3120   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3121   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3122   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3123   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3124   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3125   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3126   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3127   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3128   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3129   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3130   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3131   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3132   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3133   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3134   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3135   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3136   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3137   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3138   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3139   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3140   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3141   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3142   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3143   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3144   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3145   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3146   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3147   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3148   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3149   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3150   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3151   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3152   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3153   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3154   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3155   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3156   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3157   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3158   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3159   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3160   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3161   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3162   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3163   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3164   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3165   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3166   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3167   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3168   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3169   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3170   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3171   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3172   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3173   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3174   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3175   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3176   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3177   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3178   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3179   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3180   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3181   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3182   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3183   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3184   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3185   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3186   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3187   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3188   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3189   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3190   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3191   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3192   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3193   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3194   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3195   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3196   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3197   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3198   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3199   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3200   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3201   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3202   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3203   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3204   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3205   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3206   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3207   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3208   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3209   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3210   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3211   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3212   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3213   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3214   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3215   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3216   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3217   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3218   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3219   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3220   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3221   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3222   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3223   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3224   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3225   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3226   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3227   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3228   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3229   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3230   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3231   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3232   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3233   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3234   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3235   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3236   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3237   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3238   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3239   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3240   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3241   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3242   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3243   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3244   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3245   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3246   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3247   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3248   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3249   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3250   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3251   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3252   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3253   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3254   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3255   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3256   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3257   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3258   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3259   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3260   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3261   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3262   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3263   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3264   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3265   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3266   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3267   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3268   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3269   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3270   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3271   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3272   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3273   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3274   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3275   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3276   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3277   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3278   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3279   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3280   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3281   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3282   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3283   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3284   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3285   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3286   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3287   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3288   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3289   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3290   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3291   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3292   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3293   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3294   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3295   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3296   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3297   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3298   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3299   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3300   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3301   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3302   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3303   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3304   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3305   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3306   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3307   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3308   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3309   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3310   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3311   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3312   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3313   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3314   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3315   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3316   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3317   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3318   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3319   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3320   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3321   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3322   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3323   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3324   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3325   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3326   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3327   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3328   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3329   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3330   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3331   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3332   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3333   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3334   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3335   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3336   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3337   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3338   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3339   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3340   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3341   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3342   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3343   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3344   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3345   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3346   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3347   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3348   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3349   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3350   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3351   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3352   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3353   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3354   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3355   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3356   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3357   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3358   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3359   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3360   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3361   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3362   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3363   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3364   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3365   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3366   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3367   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3368   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3369   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3370   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3371   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3372   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3373   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3374   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3375   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3376   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3377   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3378   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3379   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3380   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3381   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3382   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3383   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3384   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3385   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3386   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3387   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3388   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3389   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3390   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3391   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3392   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3393   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3394   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3395   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3396   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3397   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3398   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3399   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3400   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3401   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3402   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')(■){10})'fail dotstar or empty
  3403   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3404   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3405   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3406   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3407   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3408   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3409   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3410   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')(■){10})'fail dotstar or empty
  3411   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3412   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3413   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)■)P) )')([0-9]){10})'fail dotstar or empty
  3414   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)■) )')([0-9]){10})'fail dotstar or empty
  3415   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P)■)')([0-9]){10})'fail dotstar or empty
  3416   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )■)([0-9]){10})'fail dotstar or empty
  3417   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')(■){10})'fail dotstar or empty
  3418   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){■})'fail dotstar or empty
  3419   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})■fail dotstar or empty
  3420   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)■) )')([0-9]){10})'fail dotstar or empty
  3421   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P)■)')([0-9]){10})'fail dotstar or empty
  3422   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )■)([0-9]){10})'fail dotstar or empty
  3423   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')(■){10})'fail dotstar or empty
  3424   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){■})'fail dotstar or empty
  3425   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})■fail dotstar or empty
  3426   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■)■)')([0-9]){10})'fail dotstar or empty
  3427   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )■)([0-9]){10})'fail dotstar or empty
  3428   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')(■){10})'fail dotstar or empty
  3429   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){■})'fail dotstar or empty
  3430   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})■fail dotstar or empty
  3431   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)■)([0-9]){10})'fail dotstar or empty
  3432   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')(■){10})'fail dotstar or empty
  3433   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){■})'fail dotstar or empty
  3434   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})■fail dotstar or empty
  3435   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)(■){10})'fail dotstar or empty
  3436   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){■})'fail dotstar or empty
  3437   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})■fail dotstar or empty
  3438   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){■})'fail dotstar or empty
  3439   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})■fail dotstar or empty
  3440   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')■)'fail dotstar or empty
  3441   |  3     (((((((((((((((((((((((((((((((((((((((((((((S■)L)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})■fail dotstar or empty
  3442   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3443   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3444   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3445   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3446   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3447   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3448   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3449   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3450   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3451   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3452   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3453   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3454   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3455   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3456   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3457   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3458   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3459   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3460   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3461   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3462   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3463   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3464   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3465   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3466   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3467   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3468   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3469   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3470   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3471   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3472   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3473   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3474   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3475   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3476   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3477   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3478   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3479   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3480   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3481   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3482   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3483   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3484   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3485   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3486   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)■)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3487   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3488   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3489   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3490   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3491   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3492   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3493   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3494   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3495   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3496   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3497   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3498   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3499   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3500   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3501   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3502   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3503   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3504   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3505   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3506   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3507   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3508   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3509   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3510   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3511   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3512   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3513   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3514   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3515   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3516   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3517   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3518   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3519   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3520   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3521   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3522   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3523   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3524   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3525   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3526   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3527   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3528   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3529   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3530   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3531   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3532   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3533   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3534   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3535   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3536   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3537   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3538   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3539   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3540   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3541   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3542   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3543   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3544   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3545   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3546   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3547   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3548   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3549   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3550   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3551   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3552   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3553   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3554   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3555   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3556   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3557   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3558   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3559   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3560   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3561   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3562   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3563   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3564   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3565   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3566   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3567   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3568   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3569   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3570   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3571   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3572   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3573   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3574   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3575   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3576   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3577   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3578   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3579   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3580   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3581   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3582   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3583   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3584   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3585   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3586   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3587   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3588   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3589   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3590   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3591   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3592   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3593   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3594   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3595   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3596   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3597   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3598   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3599   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3600   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3601   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3602   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3603   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3604   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3605   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3606   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3607   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3608   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3609   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3610   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3611   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3612   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3613   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3614   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3615   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3616   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■})■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3617   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3618   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3619   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3620   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3621   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3622   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3623   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3624   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3625   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3626   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3627   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3628   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3629   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3630   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3631   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3632   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3633   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3634   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3635   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3636   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3637   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3638   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3639   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3640   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3641   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3642   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3643   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3644   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3645   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3646   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3647   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3648   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3649   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3650   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3651   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3652   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3653   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3654   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3655   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3656   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3657   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)■) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3658   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3659   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3660   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3661   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3662   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3663   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3664   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3665   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3666   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3667   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3668   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3669   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3670   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3671   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3672   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3673   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3674   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3675   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3676   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3677   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3678   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3679   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3680   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3681   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3682   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3683   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3684   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3685   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3686   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3687   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3688   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3689   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3690   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3691   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3692   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3693   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3694   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3695   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3696   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3697   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3698   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3699   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3700   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3701   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3702   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3703   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3704   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3705   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3706   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3707   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3708   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3709   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3710   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3711   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3712   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3713   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3714   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3715   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3716   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3717   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3718   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3719   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3720   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3721   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3722   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3723   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3724   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3725   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3726   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3727   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3728   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3729   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3730   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3731   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3732   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3733   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3734   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3735   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3736   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3737   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3738   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3739   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3740   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3741   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3742   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3743   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3744   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3745   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3746   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3747   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3748   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3749   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3750   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3751   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3752   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3753   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3754   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3755   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3756   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3757   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3758   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3759   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3760   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3761   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3762   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3763   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3764   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3765   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3766   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3767   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3768   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3769   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3770   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3771   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3772   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3773   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3774   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3775   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3776   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3777   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3778   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3779   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3780   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3781   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3782   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3783   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3784   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3785   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3786   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3787   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3788   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3789   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3790   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3791   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3792   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3793   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3794   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3795   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3796   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3797   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3798   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3799   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3800   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3801   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3802   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3803   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3804   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3805   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3806   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3807   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3808   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3809   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3810   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3811   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3812   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3813   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3814   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3815   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3816   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3817   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3818   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3819   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3820   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3821   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3822   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3823   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3824   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3825   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3826   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3827   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3828   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3829   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3830   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3831   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3832   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3833   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3834   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3835   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3836   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3837   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3838   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3839   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3840   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3841   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3842   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3843   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3844   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3845   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3846   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3847   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3848   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3849   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3850   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3851   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3852   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3853   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3854   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3855   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3856   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3857   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3858   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3859   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3860   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3861   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3862   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3863   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3864   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3865   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3866   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3867   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3868   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3869   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3870   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3871   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3872   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3873   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3874   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3875   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3876   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3877   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3878   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3879   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3880   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3881   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3882   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3883   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3884   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3885   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3886   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3887   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3888   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3889   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3890   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3891   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3892   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3893   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3894   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3895   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3896   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3897   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3898   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3899   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3900   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3901   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3902   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3903   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3904   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3905   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3906   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3907   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3908   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3909   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3910   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3911   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3912   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3913   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3914   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3915   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3916   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3917   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3918   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3919   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3920   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3921   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3922   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3923   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3924   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3925   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3926   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3927   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3928   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3929   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3930   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3931   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3932   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3933   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3934   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3935   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3936   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3937   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3938   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3939   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3940   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3941   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3942   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3943   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3944   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3945   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3946   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3947   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3948   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3949   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3950   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3951   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3952   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3953   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3954   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3955   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3956   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3957   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3958   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3959   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3960   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3961   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3962   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3963   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3964   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3965   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3966   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3967   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3968   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3969   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3970   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3971   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3972   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3973   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3974   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  3975   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  3976   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  3977   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  3978   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  3979   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  3980   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  3981   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  3982   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3983   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3984   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3985   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3986   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3987   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3988   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3989   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3990   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3991   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3992   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3993   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3994   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3995   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3996   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3997   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3998   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  3999   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4000   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4001   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4002   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4003   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4004   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4005   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4006   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4007   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4008   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4009   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4010   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4011   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4012   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4013   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4014   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4015   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4016   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4017   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4018   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4019   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4020   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4021   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4022   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4023   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4024   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4025   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4026   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4027   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4028   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4029   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4030   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4031   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4032   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4033   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4034   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4035   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4036   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4037   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4038   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4039   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4040   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4041   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4042   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4043   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4044   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4045   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4046   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4047   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4048   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4049   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4050   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4051   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4052   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4053   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4054   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4055   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4056   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4057   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4058   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4059   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4060   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4061   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4062   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4063   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4064   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4065   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4066   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4067   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4068   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4069   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4070   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4071   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4072   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4073   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4074   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4075   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4076   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4077   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4078   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4079   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4080   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4081   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4082   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4083   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4084   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4085   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4086   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4087   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4088   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4089   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4090   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4091   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4092   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4093   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4094   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4095   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4096   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4097   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4098   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4099   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4100   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4101   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4102   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4103   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4104   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4105   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4106   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4107   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4108   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4109   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4110   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4111   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4112   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4113   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4114   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4115   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4116   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4117   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4118   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4119   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4120   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4121   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4122   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4123   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4124   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4125   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4126   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4127   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4128   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4129   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4130   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4131   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4132   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4133   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4134   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4135   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4136   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4137   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4138   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4139   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4140   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4141   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4142   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4143   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4144   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4145   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4146   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4147   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4148   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4149   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4150   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4151   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4152   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4153   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4154   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4155   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4156   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4157   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4158   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4159   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4160   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4161   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4162   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4163   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4164   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4165   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4166   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4167   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4168   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4169   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4170   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4171   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4172   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4173   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4174   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4175   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4176   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4177   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4178   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4179   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4180   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4181   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4182   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4183   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4184   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4185   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4186   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4187   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4188   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4189   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4190   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4191   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4192   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4193   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4194   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4195   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4196   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4197   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4198   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4199   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4200   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4201   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4202   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4203   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4204   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4205   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4206   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4207   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4208   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4209   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4210   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4211   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4212   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4213   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4214   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4215   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4216   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4217   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4218   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4219   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4220   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4221   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4222   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4223   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4224   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4225   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4226   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4227   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4228   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4229   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4230   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4231   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4232   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4233   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4234   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4235   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4236   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4237   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4238   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4239   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4240   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4241   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4242   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4243   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4244   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4245   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4246   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4247   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4248   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4249   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4250   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4251   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4252   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4253   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4254   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4255   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4256   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4257   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4258   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4259   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4260   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4261   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4262   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4263   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4264   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4265   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4266   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4267   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4268   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4269   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4270   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4271   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4272   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4273   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4274   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4275   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4276   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4277   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4278   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4279   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4280   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4281   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4282   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4283   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4284   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4285   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4286   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4287   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4288   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4289   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4290   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4291   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4292   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4293   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4294   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4295   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4296   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4297   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4298   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4299   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4300   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4301   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4302   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4303   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4304   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4305   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4306   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4307   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4308   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4309   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4310   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4311   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4312   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4313   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4314   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4315   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4316   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4317   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4318   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4319   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4320   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4321   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4322   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4323   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4324   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4325   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4326   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4327   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4328   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4329   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4330   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4331   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4332   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4333   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4334   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4335   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4336   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4337   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4338   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4339   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4340   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4341   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4342   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4343   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4344   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4345   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4346   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4347   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4348   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4349   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4350   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4351   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4352   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4353   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4354   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4355   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4356   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4357   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4358   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4359   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4360   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4361   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4362   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4363   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4364   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4365   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4366   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4367   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4368   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4369   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4370   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4371   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4372   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4373   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4374   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4375   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4376   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4377   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4378   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4379   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4380   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4381   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4382   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4383   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4384   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4385   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4386   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4387   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4388   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4389   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4390   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4391   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4392   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4393   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4394   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4395   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4396   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4397   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4398   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4399   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4400   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4401   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4402   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4403   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4404   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4405   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4406   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4407   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4408   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4409   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4410   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4411   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4412   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4413   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4414   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4415   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4416   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4417   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4418   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4419   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4420   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4421   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4422   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4423   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4424   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4425   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4426   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4427   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4428   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4429   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4430   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4431   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4432   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4433   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4434   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4435   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4436   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4437   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4438   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4439   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')(■){10})'fail dotstar or empty
  4440   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4441   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4442   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4443   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4444   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4445   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4446   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4447   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')(■){10})'fail dotstar or empty
  4448   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4449   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4450   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)■)P) )')([0-9]){10})'fail dotstar or empty
  4451   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)■) )')([0-9]){10})'fail dotstar or empty
  4452   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P)■)')([0-9]){10})'fail dotstar or empty
  4453   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )■)([0-9]){10})'fail dotstar or empty
  4454   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')(■){10})'fail dotstar or empty
  4455   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){■})'fail dotstar or empty
  4456   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})■fail dotstar or empty
  4457   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)■) )')([0-9]){10})'fail dotstar or empty
  4458   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P)■)')([0-9]){10})'fail dotstar or empty
  4459   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )■)([0-9]){10})'fail dotstar or empty
  4460   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')(■){10})'fail dotstar or empty
  4461   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){■})'fail dotstar or empty
  4462   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})■fail dotstar or empty
  4463   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■)■)')([0-9]){10})'fail dotstar or empty
  4464   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )■)([0-9]){10})'fail dotstar or empty
  4465   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')(■){10})'fail dotstar or empty
  4466   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){■})'fail dotstar or empty
  4467   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})■fail dotstar or empty
  4468   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)■)([0-9]){10})'fail dotstar or empty
  4469   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')(■){10})'fail dotstar or empty
  4470   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){■})'fail dotstar or empty
  4471   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})■fail dotstar or empty
  4472   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)(■){10})'fail dotstar or empty
  4473   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){■})'fail dotstar or empty
  4474   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})■fail dotstar or empty
  4475   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){■})'fail dotstar or empty
  4476   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})■fail dotstar or empty
  4477   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')■)'fail dotstar or empty
  4478   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)■)E)C)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})■fail dotstar or empty
  4479   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4480   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4481   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4482   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4483   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4484   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4485   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4486   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4487   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4488   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4489   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4490   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4491   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4492   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4493   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4494   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4495   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4496   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4497   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4498   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4499   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4500   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4501   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4502   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4503   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4504   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4505   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4506   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4507   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4508   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4509   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4510   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4511   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4512   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4513   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4514   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4515   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4516   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4517   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4518   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4519   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4520   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4521   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4522   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)■)T)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4523   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4524   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4525   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4526   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4527   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4528   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4529   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4530   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4531   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4532   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4533   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4534   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4535   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4536   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4537   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4538   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4539   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4540   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4541   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4542   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4543   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4544   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4545   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4546   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4547   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4548   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4549   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4550   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4551   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4552   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4553   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4554   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4555   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4556   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4557   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4558   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4559   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4560   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4561   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4562   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4563   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4564   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4565   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)■)( )*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4566   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4567   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4568   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4569   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4570   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4571   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4572   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4573   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4574   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4575   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4576   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4577   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4578   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4579   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4580   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4581   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4582   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4583   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4584   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4585   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4586   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4587   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4588   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4589   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4590   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4591   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4592   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4593   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4594   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4595   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4596   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4597   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4598   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4599   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4600   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4601   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4602   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4603   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4604   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4605   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4606   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4607   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)(■)*) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4608   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■})■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4609   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4610   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4611   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4612   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4613   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4614   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4615   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4616   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4617   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4618   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4619   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4620   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4621   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4622   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4623   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4624   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4625   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4626   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4627   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4628   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4629   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4630   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4631   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4632   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4633   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4634   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4635   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4636   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4637   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4638   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4639   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4640   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4641   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4642   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4643   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4644   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4645   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4646   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4647   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4648   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( ){■}) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4649   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)■) )F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4650   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4651   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4652   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4653   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4654   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4655   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4656   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4657   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4658   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4659   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4660   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4661   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4662   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4663   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4664   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4665   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4666   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4667   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4668   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4669   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4670   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4671   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4672   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4673   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4674   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4675   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4676   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4677   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4678   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4679   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4680   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4681   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4682   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4683   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4684   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4685   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4686   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4687   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4688   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4689   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*)■)F)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4690   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4691   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4692   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4693   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4694   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4695   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4696   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4697   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4698   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4699   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4700   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4701   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4702   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4703   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4704   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4705   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4706   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4707   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4708   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4709   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4710   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4711   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4712   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4713   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4714   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4715   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4716   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4717   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4718   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4719   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4720   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4721   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4722   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4723   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4724   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4725   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4726   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4727   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4728   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )■)R)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4729   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4730   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4731   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4732   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4733   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4734   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4735   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4736   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4737   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4738   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4739   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4740   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4741   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4742   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4743   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4744   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4745   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4746   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4747   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4748   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4749   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4750   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4751   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4752   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4753   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4754   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4755   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4756   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4757   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4758   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4759   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4760   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4761   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4762   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4763   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4764   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4765   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4766   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)■)O)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4767   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4768   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4769   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4770   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4771   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4772   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4773   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4774   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4775   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4776   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4777   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4778   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4779   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4780   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4781   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4782   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4783   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4784   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4785   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4786   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4787   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4788   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4789   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4790   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4791   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4792   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4793   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4794   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4795   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4796   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4797   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4798   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'fail dotstar or empty
  4799   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P)■)')([0-9]){10})'fail dotstar or empty
  4800   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )■)([0-9]){10})'fail dotstar or empty
  4801   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')(■){10})'fail dotstar or empty
  4802   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){■})'fail dotstar or empty
  4803   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)■)M) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})■fail dotstar or empty
  4804   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■)■)`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4805   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )■)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4806   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)■)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4807   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)■)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4808   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)■)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4809   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)■)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4810   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)■)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4811   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)■)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4812   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)■)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4813   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)■)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4814   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)■) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4815   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`)■)W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4816   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )■)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4817   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)■)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4818   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)■)R)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4819   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)■)E) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4820   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)■) )d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4821   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E)■)d)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4822   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )■)e)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4823   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)■)t)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4824   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)■)a)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4825   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)■)i)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4826   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)■)l) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4827   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)■) )R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4828   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l)■)R)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4829   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )■)E)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4830   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)■)G)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4831   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)■)E)X)P) )')([0-9]){10})'fail dotstar or empty
  4832   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)■)X)P) )')([0-9]){10})'fail dotstar or empty
  4833   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)■)P) )')([0-9]){10})'fail dotstar or empty
  4834   |  3     (((((((((((((((((((((((((((((((((((((((((((((SE)L)■)C)T)( )*) )F)R)O)■) )`)c)o)m)m)e)n)t)s)`) )W)H)E)R)E) )d)e)t)a)i)l) )R)E)G)E)X)■) )')([0-9]){10})'
20.146157026290894
timeout