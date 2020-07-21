
Given the regular expression:

  (((set_session_email|get_session_email)|send_sync_info)|send_sync_purchase_info)

That that should match the strings:


And reject the strings:

  ✗ (0:17)   set_session_email
  ✗ (17:34)  get_session_email
  ✗ (34:48)  send_sync_info
  ✗ (48:71)  send_sync_purchase_info

Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((((((((((((((((■e)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  2      |  1     ((((((((((((((((((s■)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  3      |  1     ((((((((((((((((((se)■)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  4      |  1     ((((((((((((((((((se)t)■)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  5      |  1     ((((((((((((((((((se)t)_)■)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  6      |  1     ((((((((((((((((((se)t)_)s)■)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  7      |  1     ((((((((((((((((((se)t)_)s)e)■)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  8      |  1     ((((((((((((((((((se)t)_)s)e)s)■)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  9      |  1     ((((((((((((((((((se)t)_)s)e)s)s)■)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  10     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)■)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  11     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)■)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  12     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)■)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  13     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)■)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  14     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)■)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  15     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)■)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  16     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)■)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  17     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)■|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  18     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((■e)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  19     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((g■)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  20     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)■)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  21     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)■)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  22     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)■)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  23     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)■)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  24     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)■)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  25     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)■)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  26     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)■)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  27     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)■)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  28     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)■)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  29     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)■)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  30     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)■)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  31     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)■)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  32     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)■)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  33     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)■)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  34     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)■)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  35     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((■e)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  36     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((s■)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  37     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)■)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  38     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)■)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  39     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)■)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  40     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)■)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  41     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)■)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  42     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)■)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  43     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)■)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  44     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)■)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  45     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)■)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  46     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)■)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  47     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)■)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  48     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)■)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  49     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((■e)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  50     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((s■)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  51     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)■)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  52     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)■)_)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  53     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)■)s)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  54     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)■)y)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  55     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)■)n)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  56     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)■)c)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  57     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)■)_)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  58     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)■)p)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  59     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)■)u)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  60     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)■)r)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  61     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)■)c)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  62     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)■)h)a)s)e)_)i)n)f)o)fail dotstar or empty
  63     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)■)a)s)e)_)i)n)f)o)fail dotstar or empty
  64     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)■)s)e)_)i)n)f)o)fail dotstar or empty
  65     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)■)e)_)i)n)f)o)fail dotstar or empty
  66     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)■)_)i)n)f)o)fail dotstar or empty
  67     |  1     ((((((((((((((((((se)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l|(((((((((((((((ge)t)_)s)e)s)s)i)o)n)_)e)m)a)i)l)|((((((((((((se)n)d)_)s)y)n)c)_)i)n)f)o)|(((((((((((((((((((((se)n)d)_)s)y)n)c)_)p)u)r)c)h)a)s)e)■)i)n)f)o)
2.0430920124053955
timeout