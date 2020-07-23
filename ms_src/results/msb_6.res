
Given the regular expression:

  ([0-9a-zA-Z]){1,30}\.([a-z]){3}((\.)([a-z]){2})?

That that should match the strings:

  ? (0:14)   abc.abc.com.ae
  ? (14:24)  abc.com.ae
  ? (24:31)  abc.com

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((?){1,30}\.)([a-z]){3})(\.([a-z]){2})?get a solution: ((([ab\.c]){1,30}\.)([a-z]){3})(\.([a-z]){2})?
add positive: 0.aaa
add negative: ..aaa
  unsatisfiable SAT formula       
  2      |  1     ((([0-9a-zA-Z]){?}\.)([a-z]){3})(\.([a-z]){2})?fail dotstar or empty
  3      |  1     ((([0-9a-zA-Z]){1,30}?)([a-z]){3})(\.([a-z]){2})?fail dot
  4      |  1     ((([0-9a-zA-Z]){1,30}\.)(?){3})(\.([a-z]){2})?fail dot
  5      |  1     ((([0-9a-zA-Z]){1,30}\.)([a-z]){?})(\.([a-z]){2})?fail dotstar or empty
  6      |  1     ((([0-9a-zA-Z]){1,30}\.)([a-z]){3})(?([a-z]){2})?fail dot
  7      |  1     ((([0-9a-zA-Z]){1,30}\.)([a-z]){3})(\.(?){2})?fail dot
  8      |  1     ((([0-9a-zA-Z]){1,30}\.)([a-z]){3})(\.([a-z]){?})?fail dotstar or empty
  9      |  1     ((([0-9a-zA-Z]){1,30}\.)([a-z]){3})(\.([a-z]){2}){?}fail dotstar or empty
  10     |  2     (((?){?}\.)([a-z]){3})(\.([a-z]){2})?  unsatisfiable SAT formula       
  11     |  2     (((?){1,30}?)([a-z]){3})(\.([a-z]){2})?  unsatisfiable SAT formula       
  12     |  2     (((?){1,30}\.)(?){3})(\.([a-z]){2})?  unsatisfiable SAT formula       
  13     |  2     (((?){1,30}\.)([a-z]){?})(\.([a-z]){2})?  unsatisfiable SAT formula       
  14     |  2     (((?){1,30}\.)([a-z]){3})(?([a-z]){2})?  unsatisfiable SAT formula       
  15     |  2     (((?){1,30}\.)([a-z]){3})(\.(?){2})?  unsatisfiable SAT formula       
  16     |  2     (((?){1,30}\.)([a-z]){3})(\.([a-z]){?})?  unsatisfiable SAT formula       
  17     |  2     (((?){1,30}\.)([a-z]){3})(\.([a-z]){2}){?}  unsatisfiable SAT formula       
  18     |  2     ((?\.)([a-z]){3})(\.([a-z]){2})?fail dot
  19     |  2     (((??){1,30}\.)([a-z]){3})(\.([a-z]){2})?fail dot
  20     |  2     ((((?|?)){1,30}\.)([a-z]){3})(\.([a-z]){2})?fail solve
  21     |  2     ((((?){?}){1,30}\.)([a-z]){3})(\.([a-z]){2})?
30.05122423171997
timeout