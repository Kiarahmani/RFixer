
Given the regular expression:

  (gtm(\.)*click|gtm.formSubmit)

That that should match the strings:

  ✓ (0:13)   gtm.linkClick

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((((((■t)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  2      |  1     ((((((((g■)m)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  3      |  1     ((((((((gt)■)(\.)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  4      |  1     ((((((((gt)m)(■)*)c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  5      |  1     ((((((((gt)m)(\.){■})c)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  6      |  1     ((((((((gt)m)(\.)*)■)l)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dot
  7      |  1     ((((((((gt)m)(\.)*)c)■)i)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  8      |  1     ((((((((gt)m)(\.)*)c)l)■)c)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  9      |  1     ((((((((gt)m)(\.)*)c)l)i)■)k|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  10     |  1     ((((((((gt)m)(\.)*)c)l)i)c)■|((((((((((((gt)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  11     |  1     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((■t)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  12     |  1     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((g■)m).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  13     |  1     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)■).)f)o)r)m)S)u)b)m)i)t)fail dotstar or empty
  14     |  1     ((((((((gt)m)(\.)*)c)l)i)c)k|((((((((((((gt)m)■)f)o)r)m)S)u)b)m)i)t)
1.0314829349517822
timeout