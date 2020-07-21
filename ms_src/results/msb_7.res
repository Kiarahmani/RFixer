
Given the regular expression:

  (((\w)+([\-\.'+](\w)+)*@(\w)+([\-\.](\w)+)*\.(\w)+([\-\.](\w)+)*)*([,])*)*

That that should match the strings:

  ✓ (0:37)   email1@domain.com,  email2@domain.com

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((((((((■)+([\-\.'+](\w)+)*)@)(\w)+)([\-\.](\w)+)*)\.)(\w)+)([\-\.](\w)+)*)*([,])*)*get a solution: ((((((((([acdeil,mno1\.2@ ])+([\-\.'+](\w)+)*)@)(\w)+)([\-\.](\w)+)*)\.)(\w)+)([\-\.](\w)+)*)*([,])*)*
add positive:  
add negative:  @0.0
  2      |  1     (((((((((\w){■}([\-\.'+](\w)+)*)@)(\w)+)([\-\.](\w)+)*)\.)(\w)+)([\-\.](\w)+)*)*([,])*)*fail dotstar or empty
  3      |  1     (((((((((\w)+(■(\w)+)*)@)(\w)+)([\-\.](\w)+)*)\.)(\w)+)([\-\.](\w)+)*)*([,])*)*fail dotstar or empty
  4      |  1     (((((((((\w)+([\-\.'+](■)+)*)@)(\w)+)([\-\.](\w)+)*)\.)(\w)+)([\-\.](\w)+)*)*([,])*)*fail dotstar or empty
  5      |  1     (((((((((\w)+([\-\.'+](\w){■})*)@)(\w)+)([\-\.](\w)+)*)\.)(\w)+)([\-\.](\w)+)*)*([,])*)*fail dotstar or empty
  6      |  1     (((((((((\w)+([\-\.'+](\w)+){■})@)(\w)+)([\-\.](\w)+)*)\.)(\w)+)([\-\.](\w)+)*)*([,])*)*fail dotstar or empty
  7      |  1     (((((((((\w)+([\-\.'+](\w)+)*)■)(\w)+)([\-\.](\w)+)*)\.)(\w)+)([\-\.](\w)+)*)*([,])*)*fail dotstar or empty
  8      |  1     (((((((((\w)+([\-\.'+](\w)+)*)@)(■)+)([\-\.](\w)+)*)\.)(\w)+)([\-\.](\w)+)*)*([,])*)*fail dotstar or empty
  9      |  1     (((((((((\w)+([\-\.'+](\w)+)*)@)(\w){■})([\-\.](\w)+)*)\.)(\w)+)([\-\.](\w)+)*)*([,])*)*fail dotstar or empty
  10     |  1     (((((((((\w)+([\-\.'+](\w)+)*)@)(\w)+)(■(\w)+)*)\.)(\w)+)([\-\.](\w)+)*)*([,])*)*fail dotstar or empty
  11     |  1     (((((((((\w)+([\-\.'+](\w)+)*)@)(\w)+)([\-\.](■)+)*)\.)(\w)+)([\-\.](\w)+)*)*([,])*)*
1.0273096561431885
timeout