
Given the regular expression:

  var template_name = template.name.match('views/(')+REGEXP);

That that should match the strings:

  ✓ (0:32)   views/register'  something like:
  ✓ (32:55)  views/' upto the next '
  ✓ (55:69)  views/register

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  2      |  1     (((((((((((((((((((((((((((((((((((((((v■)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  3      |  1     (((((((((((((((((((((((((((((((((((((((va)■) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  4      |  1     (((((((((((((((((((((((((((((((((((((((va)r)■)t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  5      |  1     (((((((((((((((((((((((((((((((((((((((va)r) )■)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  6      |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)■)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  7      |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)■)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  8      |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)■)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  9      |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)■)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  10     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)■)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  11     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)■)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  12     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)■)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  13     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)■)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  14     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)■)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  15     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)■)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  16     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)■)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  17     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)■) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  18     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e)■)=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  19     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )■) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  20     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=)■)t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  21     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )■)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  22     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)■)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  23     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)■)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  24     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)■)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  25     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)■)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  26     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)■)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  27     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)■)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  28     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)■).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  29     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e)■)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  30     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)■)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  31     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)■)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  32     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)■)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  33     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)■).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  34     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e)■)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  35     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)■)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  36     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)■)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  37     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)■)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  38     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)■)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  39     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)■)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  40     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)(((((((((((((■v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  41     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('■)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  42     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)■)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  43     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)■)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  44     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)■)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  45     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)■)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  46     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)■)(')+)R)E)G)E)X)P));fail dotstar or empty
  47     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(■)+)R)E)G)E)X)P));fail dotstar or empty
  48     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)('){■})R)E)G)E)X)P));fail dotstar or empty
  49     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)■)E)G)E)X)P));fail dotstar or empty
  50     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)■)G)E)X)P));fail dotstar or empty
  51     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)■)E)X)P));fail dotstar or empty
  52     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)■)X)P));fail dotstar or empty
  53     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)■)P));fail dotstar or empty
  54     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)■));fail dotstar or empty
  55     |  1     (((((((((((((((((((((((((((((((((((((((va)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P))■fail dotstar or empty
  56     |  2     (((((((((((((((((((((((((((((((((((((((■■)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  57     |  2     (((((((((((((((((((((((((((((((((((((((■a)■) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  58     |  2     (((((((((((((((((((((((((((((((((((((((■a)r)■)t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  59     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )■)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  60     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)■)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  61     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)■)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  62     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)■)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  63     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)■)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  64     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)■)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  65     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)■)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  66     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)■)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  67     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)■)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  68     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)■)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  69     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)n)■)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  70     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)n)a)■)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  71     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)n)a)m)■) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  72     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)n)a)m)e)■)=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  73     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )■) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  74     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=)■)t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  75     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )■)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  76     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)■)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  77     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)■)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  78     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)■)l)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  79     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)■)a)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  80     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)■)t)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  81     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)■)e).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  82     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)■).)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  83     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e)■)n)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  84     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)■)a)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  85     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)■)m)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  86     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)■)e).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  87     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)■).)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  88     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e)■)m)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  89     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)■)a)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  90     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)■)t)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  91     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)■)c)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  92     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)■)h)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  93     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)■)((((((((((((('v)i)e)w)s)/)(')+)R)E)G)E)X)P));fail dotstar or empty
  94     |  2     (((((((((((((((((((((((((((((((((((((((■a)r) )t)e)m)p)l)a)t)e)_)n)a)m)e) )=) )t)e)m)p)l)a)t)e).)n)a)m)e).)m)a)t)c)h)(((((((((((((■v)i)e)w)s)/)(')+)R)E)G)E)X)P));
2.053907871246338
timeout