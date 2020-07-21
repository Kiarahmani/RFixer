
Given the regular expression:

  \w([\s\t\w])*

That that should match the strings:

  ✓ (0:7)    "@test"
  ✓ (7:11)   "@#"

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ■([\s\t\w])*            fail dot
  2      |  1     \w(■)*                  fail dotstar or empty
  3      |  1     \w([\s\t\w]){■}         fail dotstar or empty
  4      |  2     ■(■)*                   get a solution: "(["#ste@])*
add positive: 
  5      |  2     ■([\s\t\w]){■}          fail dot
  6      |  2     (■■)([\s\t\w])*         fail dot
  7      |  2     (■|■)([\s\t\w])*        fail dot
  8      |  2     (■){■}([\s\t\w])*       get a solution: (["s#te@]){0,7}([\s\t\w])*
add positive:  
get a solution: (["s#te@ ]){0,7}([\s\t\w])*
add positive: 
get a solution: (["s#te@ ]){0,7}([\s\t\w])*
add positive: 
get a solution: (["s#te@ ]){0,7}([\s\t\w])*
add positive: 
get a solution: (["s#te@ ]){0,7}([\s\t\w])*
add positive: 
get a solution: (["s#te@ ]){0,7}([\s\t\w])*
add positive: 
get a solution: (["#est@ ]){0,7}([\s\t\w])*
add positive: 
get a solution: (["#est@ ]){0,7}([\s\t\w])*
add positive: 
get a solution: (["#est@ ]){0,7}([\s\t\w])*
add positive: 
get a solution: (["#est@ ]){0,7}([\s\t\w])*
add positive: 
get a solution: (["#est@ ]){0,7}([\s\t\w])*
add positive: 
get a solution: (["#est@ ]){0,7}([\s\t\w])*
add positive: 
get a solution: (["#est@ ]){0,7}([\s\t\w])*
add positive: 
get a solution: (["#est@ ]){0,7}([\s\t\w])*
add positive: 
get a solution: (["#est@ ]){0,7}([\s\t\w])*
add positive: 
get a solution: (["#est@ ]){0,7}([\s\t\w])*
add positive: 
get a solution: (["#est@ ]){0,7}([\s\t\w])*
add positive: 
get a solution: (["#est@ ]){0,7}([\s\t\w])*
add positive: 
get a solution: (["#est@ ]){0,7}([\s\t\w])*
add positive: 
get a solution: (["#est@ ]){0,7}([\s\t\w])*
add positive: 
get a solution: (["#est@ ]){0,7}([\s\t\w])*
add positive: 
get a solution: (["#est@ ]){0,7}([\s\t\w])*
add positive: 
get a solution: (["#est@ ]){0,7}([\s\t\w])*
add positive: 
get a solution: (["#est@ ]){0,7}([\s\t\w])*
add positive: 
get a solution: (["#est@ ]){0,7}([\s\t\w])*
add positive: 
get a solution: (["#est@ ]){0,7}([\s\t\w])*
add positive: 
get a solution: (["#est@ ]){0,7}([\s\t\w])*
add positive: 
get a solution: (["#est@ ]){0,7}([\s\t\w])*
add positive: !
get a solution: ([!"#est@ ]){0,7}([\s\t\w])*
add positive: $
get a solution: ([!"#est@ \$]){0,7}([\s\t\w])*
add positive: %
get a solution: ([!"#%est@ \$]){0,7}([\s\t\w])*
add positive: &
get a solution: ([!"#%e&st@ \$]){0,7}([\s\t\w])*
add positive: '
get a solution: ([!"#%e&'st@ \$]){0,7}([\s\t\w])*
add positive: (
get a solution: ([!"#%e&'(st@ \$]){0,7}([\s\t\w])*
add positive: )
get a solution: ([!"#%e&'()st@ \$]){0,7}([\s\t\w])*
add positive: *
get a solution: ([!"#%e&'()*st@ \$]){0,7}([\s\t\w])*
add positive: +
get a solution: ([!"#%e&'()*+st@ \$]){0,7}([\s\t\w])*
add positive: ,
get a solution: ([!"#%e&'()*+,st@ \$]){0,7}([\s\t\w])*
add positive: -
get a solution: ([!"#%e&'()*+,st@ \$\-]){0,7}([\s\t\w])*
add positive: .
get a solution: ([!"#%e&'()*+,st@ \$\-\.]){0,7}([\s\t\w])*
add positive: /
get a solution: ([!"#%e&'()*+,/st@ \$\-\.]){0,7}([\s\t\w])*
add positive: :
get a solution: ([!"#%e&'()*+,/st:@ \$\-\.]){0,7}([\s\t\w])*
add positive: ;
get a solution: ([est !"#%&'()*+,/:;@\$\-\.]){0,7}([\s\t\w])*
add positive: <
get a solution: ([est !"#%&'()*+,/:;<@\$\-\.]){0,7}([\s\t\w])*
add positive: =
get a solution: ([est !"#%&'()*+,/:;<=@\$\-\.]){0,7}([\s\t\w])*
add positive: >
get a solution: ([est !"#%&'()*+,/:;<=>@\$\-\.]){0,7}([\s\t\w])*
add positive: ?
get a solution: ([est !"#%&'()*+,/:;<=>?@\$\-\.]){0,7}([\s\t\w])*
add positive: [
get a solution: ([est !"#%&'()*+,/:;<=>?@\$\-\.[]){0,7}([\s\t\w])*
add positive: \

2.0435409545898438
timeout