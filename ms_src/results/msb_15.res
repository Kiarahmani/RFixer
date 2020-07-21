
Given the regular expression:

  ([a-zA-Z])+([a-zA-Z])+\([0-2]\)

That that should match the strings:

  ✓ (0:15)   Word Word (2) >
  ✓ (15:30)  Word Word (1) >

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((■)+([a-zA-Z])+)\()[0-2])\)fail dotstar or empty
  2      |  1     (((([a-zA-Z]){■}([a-zA-Z])+)\()[0-2])\)fail dotstar or empty
  3      |  1     (((([a-zA-Z])+(■)+)\()[0-2])\)fail dotstar or empty
  4      |  1     (((([a-zA-Z])+([a-zA-Z]){■})\()[0-2])\)fail dotstar or empty
  5      |  1     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])\)fail dotstar or empty
  6      |  1     (((([a-zA-Z])+([a-zA-Z])+)\()■)\)fail dotstar or empty
  7      |  1     (((([a-zA-Z])+([a-zA-Z])+)\()[0-2])■fail dotstar or empty
  8      |  2     ((((■){■}([a-zA-Z])+)\()[0-2])\)fail dotstar or empty
  9      |  2     ((((■)+(■)+)\()[0-2])\) fail dotstar or empty
  10     |  2     ((((■)+([a-zA-Z]){■})\()[0-2])\)fail dotstar or empty
  11     |  2     ((((■)+([a-zA-Z])+)■)[0-2])\)fail dotstar or empty
  12     |  2     ((((■)+([a-zA-Z])+)\()■)\)fail dotstar or empty
  13     |  2     ((((■)+([a-zA-Z])+)\()[0-2])■fail dotstar or empty
  14     |  2     (((([a-zA-Z]){■}(■)+)\()[0-2])\)fail dotstar or empty
  15     |  2     (((([a-zA-Z]){■}([a-zA-Z]){■})\()[0-2])\)fail dotstar or empty
  16     |  2     (((([a-zA-Z]){■}([a-zA-Z])+)■)[0-2])\)fail dotstar or empty
  17     |  2     (((([a-zA-Z]){■}([a-zA-Z])+)\()■)\)fail dotstar or empty
  18     |  2     (((([a-zA-Z]){■}([a-zA-Z])+)\()[0-2])■fail dotstar or empty
  19     |  2     (((■([a-zA-Z])+)\()[0-2])\)fail dotstar or empty
  20     |  2     (((([a-zA-Z])+(■){■})\()[0-2])\)fail dotstar or empty
  21     |  2     (((([a-zA-Z])+(■)+)■)[0-2])\)fail dotstar or empty
  22     |  2     (((([a-zA-Z])+(■)+)\()■)\)fail dotstar or empty
  23     |  2     (((([a-zA-Z])+(■)+)\()[0-2])■fail dot
  24     |  2     (((([a-zA-Z])+([a-zA-Z]){■})■)[0-2])\)fail dotstar or empty
  25     |  2     (((([a-zA-Z])+([a-zA-Z]){■})\()■)\)fail dotstar or empty
  26     |  2     (((([a-zA-Z])+([a-zA-Z]){■})\()[0-2])■fail dotstar or empty
  27     |  2     (((([a-zA-Z])+■)\()[0-2])\)fail dotstar or empty
  28     |  2     (((([a-zA-Z])+([a-zA-Z])+)■)■)\)fail dotstar or empty
  29     |  2     (((([a-zA-Z])+([a-zA-Z])+)■)[0-2])■fail dot
  30     |  2     (((([a-zA-Z])+([a-zA-Z])+)\()■)■fail dotstar or empty
  31     |  3     ((((■){■}(■)+)\()[0-2])\)
1.0198519229888916
timeout