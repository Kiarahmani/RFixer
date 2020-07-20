
Given the regular expression:

  48\-57(1 or more time)32(or)10(or)13(then)48(then)32(or)10(or)13(then)111981066060

That that should match the strings:

  ✓ (0:20)   50104810111981066060
  ✓ (20:42)  4850324810111981066060

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((((((((((((((((((((((((((((((((((■8)\-)5)7)(((((((((((((1 )o)r) )m)o)r)e) )t)i)m)e))3)2)(or))1)0)(or))1)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  2      |  1     (((((((((((((((((((((((((((((((((((((4■)\-)5)7)(((((((((((((1 )o)r) )m)o)r)e) )t)i)m)e))3)2)(or))1)0)(or))1)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  3      |  1     (((((((((((((((((((((((((((((((((((((48)■)5)7)(((((((((((((1 )o)r) )m)o)r)e) )t)i)m)e))3)2)(or))1)0)(or))1)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  4      |  1     (((((((((((((((((((((((((((((((((((((48)\-)■)7)(((((((((((((1 )o)r) )m)o)r)e) )t)i)m)e))3)2)(or))1)0)(or))1)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  5      |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)■)(((((((((((((1 )o)r) )m)o)r)e) )t)i)m)e))3)2)(or))1)0)(or))1)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  6      |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((■ )o)r) )m)o)r)e) )t)i)m)e))3)2)(or))1)0)(or))1)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  7      |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1■)o)r) )m)o)r)e) )t)i)m)e))3)2)(or))1)0)(or))1)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  8      |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )■)r) )m)o)r)e) )t)i)m)e))3)2)(or))1)0)(or))1)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  9      |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)■) )m)o)r)e) )t)i)m)e))3)2)(or))1)0)(or))1)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  10     |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)r)■)m)o)r)e) )t)i)m)e))3)2)(or))1)0)(or))1)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  11     |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)r) )■)o)r)e) )t)i)m)e))3)2)(or))1)0)(or))1)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  12     |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)r) )m)■)r)e) )t)i)m)e))3)2)(or))1)0)(or))1)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  13     |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)r) )m)o)■)e) )t)i)m)e))3)2)(or))1)0)(or))1)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  14     |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)r) )m)o)r)■) )t)i)m)e))3)2)(or))1)0)(or))1)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  15     |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)r) )m)o)r)e)■)t)i)m)e))3)2)(or))1)0)(or))1)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  16     |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)r) )m)o)r)e) )■)i)m)e))3)2)(or))1)0)(or))1)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  17     |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)r) )m)o)r)e) )t)■)m)e))3)2)(or))1)0)(or))1)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  18     |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)r) )m)o)r)e) )t)i)■)e))3)2)(or))1)0)(or))1)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  19     |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)r) )m)o)r)e) )t)i)m)■))3)2)(or))1)0)(or))1)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  20     |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)r) )m)o)r)e) )t)i)m)e))■)2)(or))1)0)(or))1)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  21     |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)r) )m)o)r)e) )t)i)m)e))3)■)(or))1)0)(or))1)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  22     |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)r) )m)o)r)e) )t)i)m)e))3)2)(■r))1)0)(or))1)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  23     |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)r) )m)o)r)e) )t)i)m)e))3)2)(o■))1)0)(or))1)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  24     |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)r) )m)o)r)e) )t)i)m)e))3)2)(or))■)0)(or))1)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  25     |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)r) )m)o)r)e) )t)i)m)e))3)2)(or))1)■)(or))1)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  26     |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)r) )m)o)r)e) )t)i)m)e))3)2)(or))1)0)(■r))1)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  27     |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)r) )m)o)r)e) )t)i)m)e))3)2)(or))1)0)(o■))1)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  28     |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)r) )m)o)r)e) )t)i)m)e))3)2)(or))1)0)(or))■)3)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  29     |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)r) )m)o)r)e) )t)i)m)e))3)2)(or))1)0)(or))1)■)(((th)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  30     |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)r) )m)o)r)e) )t)i)m)e))3)2)(or))1)0)(or))1)3)(((■h)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  31     |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)r) )m)o)r)e) )t)i)m)e))3)2)(or))1)0)(or))1)3)(((t■)e)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  32     |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)r) )m)o)r)e) )t)i)m)e))3)2)(or))1)0)(or))1)3)(((th)■)n))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  33     |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)r) )m)o)r)e) )t)i)m)e))3)2)(or))1)0)(or))1)3)(((th)e)■))4)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  34     |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)r) )m)o)r)e) )t)i)m)e))3)2)(or))1)0)(or))1)3)(((th)e)n))■)8)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  35     |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)r) )m)o)r)e) )t)i)m)e))3)2)(or))1)0)(or))1)3)(((th)e)n))4)■)(((th)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)0fail dotstar or empty
  36     |  1     (((((((((((((((((((((((((((((((((((((48)\-)5)7)(((((((((((((1 )o)r) )m)o)r)e) )t)i)m)e))3)2)(or))1)0)(or))1)3)(((th)e)n))4)8)(((■h)e)n))3)2)(or))1)0)(or))1)3)(((th)e)n))1)1)1)9)8)1)0)6)6)0)6)01.0291588306427002
timeout