
Given the regular expression:

  Pattern.compile(Pattern.quote(someNotNullStringHere), Pattern.CASE_INSENSITIVE);

That that should match the strings:

  ✓ (0:22)   PatternSyntaxException

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((((((((((((■a)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  2      |  1     (((((((((((((((P■)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  3      |  1     (((((((((((((((Pa)■)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  4      |  1     (((((((((((((((Pa)t)■)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  5      |  1     (((((((((((((((Pa)t)t)■)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  6      |  1     (((((((((((((((Pa)t)t)e)■)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  7      |  1     (((((((((((((((Pa)t)t)e)r)■).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  8      |  1     (((((((((((((((Pa)t)t)e)r)n)■)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  9      |  1     (((((((((((((((Pa)t)t)e)r)n).)■)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  10     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)■)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  11     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)■)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  12     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)■)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  13     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)■)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  14     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)■)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  15     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)■)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  16     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((■a)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  17     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((P■)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  18     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)■)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  19     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)■)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  20     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)■)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  21     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)■)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  22     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)■).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  23     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n)■)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  24     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)■)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  25     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)■)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  26     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)■)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  27     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)■)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  28     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)■)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  29     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((■o)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  30     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((s■)m)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  31     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)■)e)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  32     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)■)N)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  33     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)■)o)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  34     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)■)t)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  35     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)■)N)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  36     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)■)u)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  37     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)■)l)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  38     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)■)l)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  39     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)■)S)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  40     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)■)t)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  41     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)■)r)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  42     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)■)i)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  43     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)■)n)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  44     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)■)g)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));fail dotstar or empty
  45     |  1     (((((((((((((((Pa)t)t)e)r)n).)c)o)m)p)i)l)e)(((((((((((((((((((((((((((((((((((((((Pa)t)t)e)r)n).)q)u)o)t)e)((((((((((((((((((((so)m)e)N)o)t)N)u)l)l)S)t)r)i)n)■)H)e)r)e)),) )P)a)t)t)e)r)n).)C)A)S)E)_)I)N)S)E)N)S)I)T)I)V)E));
2.0788469314575195
timeout