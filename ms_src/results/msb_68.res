
Given the regular expression:

  (((\(00(\d){2}\)|\(\+(\d){2}\))|00(\d){2})|\+(\d){2})(([\. ])?)?3(\d){2}(([\-\. ])?)?(\d){2,4}(([\-\. ])?)?(\d){2,4}$

That that should match the strings:

  ✓ (0:15)   +39.1234.325636

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
Unknown AST class: edu.wisc.regfixer.parser.AnchorNode

0.3857231140136719
error