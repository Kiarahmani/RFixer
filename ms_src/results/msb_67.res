
Given the regular expression:

  www.domain domain.com nextone.com www.domain.com

That that should match the strings:

  ✓ (0:13)   www. and .com

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  2      |  1     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  3      |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)■).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  4      |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w)■)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  5      |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)■)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  6      |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)■)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  7      |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)■)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  8      |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)■)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  9      |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)■)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  10     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)■) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  11     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n)■)d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  12     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )■)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  13     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)■)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  14     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)■)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  15     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)■)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  16     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)■)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  17     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)■).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  18     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n)■)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  19     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)■)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  20     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)■)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  21     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)■) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  22     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m)■)n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  23     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )■)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  24     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)■)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  25     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)■)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  26     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)■)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  27     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)■)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  28     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)■)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  29     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)■).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  30     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e)■)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  31     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)■)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  32     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)■)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  33     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)■) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  34     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m)■)w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  35     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )■)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  36     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)■)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  37     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)■).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  38     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w)■)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  39     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)■)o)m)a)i)n).)c)o)mfail dotstar or empty
  40     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)■)m)a)i)n).)c)o)mfail dotstar or empty
  41     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)■)a)i)n).)c)o)mfail dotstar or empty
  42     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)■)i)n).)c)o)mfail dotstar or empty
  43     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)■)n).)c)o)mfail dotstar or empty
  44     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)■).)c)o)mfail dotstar or empty
  45     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n)■)c)o)mfail dotstar or empty
  46     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)■)o)mfail dotstar or empty
  47     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)■)mfail dotstar or empty
  48     |  1     ((((((((((((((((((((((((((((((((((((((((((((((ww)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)■fail dotstar or empty
  49     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■■)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  50     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)■).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  51     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w)■)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  52     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)■)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  53     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)■)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  54     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)■)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  55     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)■)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  56     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)■)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  57     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)■) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  58     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n)■)d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  59     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )■)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  60     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)■)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  61     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)■)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  62     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)■)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  63     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)■)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  64     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)■).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  65     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n)■)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  66     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)■)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  67     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)■)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  68     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)■) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  69     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m)■)n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  70     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )■)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  71     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)■)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  72     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)■)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  73     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)■)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  74     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)■)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  75     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)■)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  76     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)■).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  77     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e)■)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  78     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)■)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  79     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)■)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  80     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)■) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  81     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m)■)w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  82     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )■)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  83     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)■)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  84     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)■).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  85     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w)■)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  86     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)■)o)m)a)i)n).)c)o)mfail dotstar or empty
  87     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)■)m)a)i)n).)c)o)mfail dotstar or empty
  88     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)■)a)i)n).)c)o)mfail dotstar or empty
  89     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)■)i)n).)c)o)mfail dotstar or empty
  90     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)■)n).)c)o)mfail dotstar or empty
  91     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)■).)c)o)mfail dotstar or empty
  92     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n)■)c)o)mfail dotstar or empty
  93     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)■)o)mfail dotstar or empty
  94     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)■)mfail dotstar or empty
  95     |  2     ((((((((((((((((((((((((((((((((((((((((((((((■w)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)■fail dotstar or empty
  96     |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)■).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  97     |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w)■)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  98     |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)■)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  99     |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)■)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  100    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)■)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  101    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)■)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  102    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)■)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  103    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)■) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  104    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n)■)d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  105    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )■)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  106    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)■)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  107    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)■)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  108    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)m)■)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  109    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)m)a)■)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  110    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)m)a)i)■).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  111    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)m)a)i)n)■)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  112    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)■)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  113    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)■)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  114    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)■) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  115    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m)■)n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  116    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )■)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  117    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)■)x)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  118    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)■)t)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  119    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)■)o)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  120    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)■)n)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  121    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)■)e).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  122    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)■).)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  123    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e)■)c)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  124    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)■)o)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  125    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)■)m) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  126    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)■) )w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  127    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m)■)w)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  128    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )■)w)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  129    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)■)w).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  130    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)■).)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  131    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w)■)d)o)m)a)i)n).)c)o)mfail dotstar or empty
  132    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)■)o)m)a)i)n).)c)o)mfail dotstar or empty
  133    |  2     ((((((((((((((((((((((((((((((((((((((((((((((w■)w).)d)o)m)a)i)n) )d)o)m)a)i)n).)c)o)m) )n)e)x)t)o)n)e).)c)o)m) )w)w)w).)d)■)m)a)i)n).)c)o)m
2.043747663497925
timeout