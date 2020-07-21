
Given the regular expression:

  (http(s)?:\/\/)?(([\-\.\da-z])+)\.(([\.a-z]){2,6})(([\-\.\/\w ])*)*(\/)?

That that should match the strings:

  ✓ (0:33)   git@github.com:username/MyApp.git
  ✓ (33:70)  https://github.com/username/MyApp.git

And reject the strings:

  ✗ (70:76)  pp.git
  ✗ (76:86)  github.com

Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((((((((■t)t)p)(s)?):)\/)\/)?([\-\.\da-z])+)\.)([\.a-z]){2,6})(([\-\.\/\w ])*)*)(\/)?fail dotstar or empty
  2      |  1     (((((((((((h■)t)p)(s)?):)\/)\/)?([\-\.\da-z])+)\.)([\.a-z]){2,6})(([\-\.\/\w ])*)*)(\/)?fail dotstar or empty
  3      |  1     (((((((((((ht)■)p)(s)?):)\/)\/)?([\-\.\da-z])+)\.)([\.a-z]){2,6})(([\-\.\/\w ])*)*)(\/)?fail dotstar or empty
  4      |  1     (((((((((((ht)t)■)(s)?):)\/)\/)?([\-\.\da-z])+)\.)([\.a-z]){2,6})(([\-\.\/\w ])*)*)(\/)?fail dotstar or empty
  5      |  1     (((((((((((ht)t)p)(■)?):)\/)\/)?([\-\.\da-z])+)\.)([\.a-z]){2,6})(([\-\.\/\w ])*)*)(\/)?fail dotstar or empty
  6      |  1     (((((((((((ht)t)p)(s){■}):)\/)\/)?([\-\.\da-z])+)\.)([\.a-z]){2,6})(([\-\.\/\w ])*)*)(\/)?fail dotstar or empty
  7      |  1     (((((((((((ht)t)p)(s)?)■)\/)\/)?([\-\.\da-z])+)\.)([\.a-z]){2,6})(([\-\.\/\w ])*)*)(\/)?fail dotstar or empty
  8      |  1     (((((((((((ht)t)p)(s)?):)■)\/)?([\-\.\da-z])+)\.)([\.a-z]){2,6})(([\-\.\/\w ])*)*)(\/)?fail dotstar or empty
  9      |  1     (((((((((((ht)t)p)(s)?):)\/)■)?([\-\.\da-z])+)\.)([\.a-z]){2,6})(([\-\.\/\w ])*)*)(\/)?fail dotstar or empty
  10     |  1     (((((((((((ht)t)p)(s)?):)\/)\/){■}([\-\.\da-z])+)\.)([\.a-z]){2,6})(([\-\.\/\w ])*)*)(\/)?fail dotstar or empty
  11     |  1     (((((((((((ht)t)p)(s)?):)\/)\/)?(■)+)\.)([\.a-z]){2,6})(([\-\.\/\w ])*)*)(\/)?
2.014799118041992
timeout