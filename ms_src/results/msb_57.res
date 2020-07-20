
Given the regular expression:

  (.)+(([!<=>])+)(.)+

That that should match the strings:

  ✓ (0:6)    f>=2+a
  ✓ (6:11)   1+2<4
  ✓ (11:15)  a!=2

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■)+([!<=>])+)(.)+     get a solution: (([1a2f+])+([!<=>])+)(.)+
add positive:  ! 
add negative: +!!
  unsatisfiable SAT formula       
  2      |  1     ((.){■}([!<=>])+)(.)+     unsatisfiable SAT formula       
  3      |  1     ((.)+(■)+)(.)+            unsatisfiable SAT formula       
  4      |  1     ((.)+([!<=>]){■})(.)+     unsatisfiable SAT formula       
  5      |  1     ((.)+([!<=>])+)(■)+     get a solution: ((.)+([!<=>])+)([a24+= ])+
add positive:  !
add negative: !! 
  unsatisfiable SAT formula       
  6      |  1     ((.)+([!<=>])+)(.){■}     unsatisfiable SAT formula       
  7      |  2     ((■){■}([!<=>])+)(.)+     unsatisfiable SAT formula       
  8      |  2     ((■)+(■)+)(.)+          get a solution: (([1a2f=> ])+([!2+<=>])+)(.)+
add positive: ! 
add negative: =! 
get a solution: (([1af> ])+([!2+<=>])+)(.)+
add positive: ! 
add negative: >! 
get a solution: (([1af ])+([!2+<=>])+)(.)+
add positive: ! 
add negative:  + 
  unsatisfiable SAT formula       
  9      |  2     ((■)+([!<=>]){■})(.)+     unsatisfiable SAT formula       
  10     |  2     ((■)+([!<=>])+)(■)+     get a solution: (([1a2f+ ])+([!<=>])+)([a24+= ])+
add positive: ! 
add negative:  !=
get a solution: (([1a2f+ ])+([!<=>])+)([a24+ ])+
add positive:  !
get a solution: (([1a2f+ ])+([!<=>])+)([a24+ ])+
add positive:  !
get a solution: (([1a2f+ ])+([!<=>])+)([a24+ ])+
add positive: ! 
get a solution: (([1a2f+ ])+([!<=>])+)([a24+ ])+
add positive: ! 
get a solution: (([af+12 ])+([!<=>])+)([a24+ ])+
add positive:  !
get a solution: (([af+12 ])+([!<=>])+)([a24+ ])+
add positive:  !
get a solution: (([af+12 ])+([!<=>])+)([a24+ ])+
add positive:  !
get a solution: (([af+12 ])+([!<=>])+)([a24+ ])+
add positive:  !
get a solution: (([af+12 ])+([!<=>])+)([a+24 ])+
add positive: ! 
get a solution: (([af+12 ])+([!<=>])+)([a+24 ])+
add positive:  !
get a solution: (([af+12 ])+([!<=>])+)([a+24 ])+
add positive:  !	
get a solution: (([af+12 ])+([!<=>])+)([a	+24 ])+
add positive:  !

get a solution: (([af+12 ])+([!<=>])+)([a	
+24 ])+
add positive:  !
get a solution: (([af+12 ])+([!<=>])+)([a	
+24 ])+
add positive: ! 
get a solution: (([af+12 ])+([!<=>])+)([a	
+24 ])+
add positive: 	! 
get a solution: (([af	+12 ])+([!<=>])+)([a	
+24 ])+
add positive:  !
get a solution: (([af	+12 ])+([!<=>])+)([a	
+24 ])+
add positive:  !
get a solution: (([af	+12 ])+([!<=>])+)([a	
+24 ])+
add positive:  !
get a solution: (([af	+12 ])+([!<=>])+)([a	
+24 ])+
add positive: 
! 
get a solution: (([af	
+12 ])+([!<=>])+)([a	
+24 ])+
add positive:  !
get a solution: (([af	
+12 ])+([!<=>])+)([a	
+24 ])+
add positive:  !
get a solution: (([af	
+12 ])+([!<=>])+)([a	
+24 ])+
add positive:  !
get a solution: (([af	
+12 ])+([!<=>])+)([a	
+24 ])+
add positive:  !
get a solution: (([af	
+12 ])+([!<=>])+)([a	
+24 ])+
add positive:  !
get a solution: (([af	
+12 ])+([!<=>])+)([a+24 	
])+
add positive: ! 
get a solution: (([af	
+12 ])+([!<=>])+)([a+24 	
])+
add positive: ! 
get a solution: (([af	
+12 ])+([!<=>])+)([a+24 	
])+
add positive: ! 
get a solution: (([af	
+12 ])+([!<=>])+)([a+24 	
])+
add positive: ! 
get a solution: (([af	
+12 ])+([!<=>])+)([a+24 	
])+
add positive:  !
get a solution: (([af	
+12 ])+([!<=>])+)([a+24 	
])+
add positive: ! 
get a solution: (([af	
+12 ])+([!<=>])+)([a+24 	
])+
add positive:  !
get a solution: (([af	
+12 ])+([!<=>])+)([a+24 	
])+
add positive: ! 
get a solution: (([af	
+12 ])+([!<=>])+)([a+24 	
])+
add positive:  !
get a solution: (([af	
+12 ])+([!<=>])+)([a+24 	
])+
add positive:  !
get a solution: (([af	
+12 ])+([!<=>])+)([a+24 	
])+
add positive:  !
get a solution: (([af	
+12 ])+([!<=>])+)([a+24 	
])+
add positive:  !
get a solution: (([af	
+12 ])+([!<=>])+)([a+24 	
])+
add positive:  !
get a solution: (([af	
+12 ])+([!<=>])+)([a+24 	
])+
add positive:  !
get a solution: (([af	
+12 ])+([!<=>])+)([a+24 	
])+
add positive: ! 
get a solution: (([af	
+12 ])+([!<=>])+)([a+24 	
])+
add positive: ! 

1.0213181972503662
timeout