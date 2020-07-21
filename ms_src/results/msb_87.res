
Given the regular expression:

  <a href="page.ashx" xref="somethingelse" title="something" class="image">

That that should match the strings:

  ✓ (0:10)   xref="..."

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((■a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  2      |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<■) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  3      |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a)■)h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  4      |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )■)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  5      |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)■)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  6      |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)■)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  7      |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)■)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  8      |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)■)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  9      |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)■)p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  10     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")■)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  11     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)■)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  12     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)■)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  13     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)■).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  14     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e)■)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  15     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)■)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  16     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)■)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  17     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)■)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  18     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)■)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  19     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)■) )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  20     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)")■)x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  21     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )■)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  22     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)■)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  23     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)■)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  24     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)■)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  25     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)■)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  26     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)■)s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  27     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")■)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  28     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)■)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  29     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)■)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  30     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)■)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  31     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)■)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  32     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)■)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  33     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)■)n)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  34     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)■)g)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  35     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)■)e)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  36     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)■)l)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  37     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)■)s)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  38     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)■)e)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  39     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)■)") )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  40     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)■) )t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  41     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)")■)t)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  42     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )■)i)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  43     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)■)t)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  44     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)■)l)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  45     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)■)e)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  46     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)■)=)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  47     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)■)")s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  48     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)■)s)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>fail dotstar or empty
  49     |  1     (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((<a) )h)r)e)f)=)")p)a)g)e).)a)s)h)x)") )x)r)e)f)=)")s)o)m)e)t)h)i)n)g)e)l)s)e)") )t)i)t)l)e)=)")■)o)m)e)t)h)i)n)g)") )c)l)a)s)s)=)")i)m)a)g)e)")>
2.053705930709839
timeout