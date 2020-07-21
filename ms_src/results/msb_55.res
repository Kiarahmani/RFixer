
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
get a solution: (([af+12 	
])+([!<=>])+)([a+24 	
])+
add positive: ! 
get a solution: (([af+12 	
])+([!<=>])+)([a+24 	
])+
add positive:  !
get a solution: (([af+12 	
])+([!<=>])+)([a+24 	
])+
add positive:  !
get a solution: (([af+12 	
])+([!<=>])+)([a+24 	
])+
add positive: ! 
get a solution: (([af+12 	
])+([!<=>])+)([a+24 	
])+
add positive:  !
get a solution: (([af+12 	
])+([!<=>])+)([a+24 	
])+
add positive:  !
get a solution: (([af+12 	
])+([!<=>])+)([a+24 	
])+
add positive: ! 
get a solution: (([af+12 	
])+([!<=>])+)([a+24 	
])+
add positive: ! 
get a solution: (([af+12 	
])+([!<=>])+)([a+24 	
])+
add positive:  ! 
get a solution: (([af+12 	
])+([!<=>])+)([a+24 	
 ])+
add positive: ! 
get a solution: (([af+12 	
])+([!<=>])+)([a+24 	
 ])+
add positive:  !"
get a solution: (([af+12 	
])+([!<=>])+)([a"+24 	
 ])+
add positive: ! 
get a solution: (([af+12 	
])+([!<=>])+)([a"+24 	
 ])+
add positive: ! 
get a solution: (([af+12 	
])+([!<=>])+)([a"+24 	
 ])+
add positive:  !#
get a solution: (([af+12 	
])+([!<=>])+)([a"#+24 	
 ])+
add positive: ! 
get a solution: (([af+12 	
])+([!<=>])+)([a"#+24 	
 ])+
add positive: ! 
get a solution: (([af+12 	
])+([!<=>])+)([a"#+24 	
 ])+
add positive: ! 
get a solution: (([af+12 	
])+([!<=>])+)([a"#+24 	
 ])+
add positive:  !$
get a solution: (([af+12 	
])+([!<=>])+)([a"#+24 \$	
 ])+
add positive: ! 
get a solution: (([af+12 	
])+([!<=>])+)([a"#+24 \$	
 ])+
add positive: ! 
get a solution: (([af+12 	
])+([!<=>])+)([a"#+24 \$	
 ])+
add positive:  !%
get a solution: (([af+12 	
])+([!<=>])+)([a"#%+24 \$	
 ])+
add positive: ! 
get a solution: (([af+12 	
])+([!<=>])+)([a"#%+24 \$	
 ])+
add positive:  ! 
get a solution: (([af+12 	
 ])+([!<=>])+)([a"#%+24 \$	
 ])+
add positive: "! 
get a solution: (([a"f+12 	
 ])+([!<=>])+)([a"#%+24 \$	
 ])+
add positive:  !&
get a solution: (([a"f+12 	
 ])+([!<=>])+)([a"#%&+24 \$	
 ])+
add positive: #! 
get a solution: (([a"#f+12 	
 ])+([!<=>])+)([a"#%&+24 \$	
 ])+
add positive: $! 
get a solution: (([a"#f+12 \$	
 ])+([!<=>])+)([a"#%&+24 \$	
 ])+
add positive:  !'
get a solution: (([a"#f+12 \$	
 ])+([!<=>])+)([a"#%&'+24 \$	
 ])+
add positive:  !(
get a solution: (([a"#f+12 \$	
 ])+([!<=>])+)([a"#%&'(+24 \$	
 ])+
add positive:  !)
get a solution: (([a"#f+12 \$	
 ])+([!<=>])+)([a"#%&'()+24 \$	
 ])+
add positive: %! 
get a solution: (([a"#%f+12 \$	
 ])+([!<=>])+)([a"#%&'()+24 \$	
 ])+
add positive:  !*
get a solution: (([a"#%f+12 \$	
 ])+([!<=>])+)([a"#%&'()*+24 \$	
 ])+
add positive: &! 
get a solution: (([a"#%f&+12 \$	
 ])+([!<=>])+)([a"#%&'()*+24 \$	
 ])+
add positive:  !,
get a solution: (([a"#%f&+12 \$	
 ])+([!<=>])+)([a"#%&'()*+,24 \$	
 ])+
add positive: '! 
get a solution: (([a"#%f&'+12 \$	
 ])+([!<=>])+)([a"#%&'()*+,24 \$	
 ])+
add positive: (! 
get a solution: (([a"#%f&'(+12 \$	
 ])+([!<=>])+)([a"#%&'()*+,24 \$	
 ])+
add positive: )! 
get a solution: (([a"#%f&'()+12 \$	
 ])+([!<=>])+)([a"#%&'()*+,24 \$	
 ])+
add positive: *! 
get a solution: (([a"#%f&'()*+12 \$	
 ])+([!<=>])+)([a"#%&'()*+,24 \$	
 ])+
add positive: ,! 
get a solution: (([af 	
 "#%&'()*+,12\$])+([!<=>])+)([a"#%&'()*+,24 \$	
 ])+
add positive:  !-
get a solution: (([af 	
 "#%&'()*+,12\$])+([!<=>])+)([a 	
 "#%&'()*+,24\$\-])+
add positive: -! 
get a solution: (([af 	
 "#%&'()*+,12\$\-])+([!<=>])+)([a 	
 "#%&'()*+,24\$\-])+
add positive: .! 
get a solution: (([af 	
 "#%&'()*+,12\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,24\$\-])+
add positive: /! 
get a solution: (([af 	
 "#%&'()*+,/12\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,24\$\-])+
add positive: 0! 
get a solution: (([af 	
 "#%&'()*+,/012\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,24\$\-])+
add positive:  !.
get a solution: (([af 	
 "#%&'()*+,/012\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,24\$\-\.])+
add positive:  !/
get a solution: (([af 	
 "#%&'()*+,/012\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/24\$\-\.])+
add positive:  !0
get a solution: (([af 	
 "#%&'()*+,/012\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/024\$\-\.])+
add positive:  !1
get a solution: (([af 	
 "#%&'()*+,/012\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0124\$\-\.])+
add positive:  !3
get a solution: (([af 	
 "#%&'()*+,/012\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/01234\$\-\.])+
add positive:  !5
get a solution: (([af 	
 "#%&'()*+,/012\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/012345\$\-\.])+
add positive:  !6
get a solution: (([af 	
 "#%&'()*+,/012\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456\$\-\.])+
add positive:  !7
get a solution: (([af 	
 "#%&'()*+,/012\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/01234567\$\-\.])+
add positive: 3! 
get a solution: (([af 	
 "#%&'()*+,/0123\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/01234567\$\-\.])+
add positive: 4! 
get a solution: (([af 	
 "#%&'()*+,/01234\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/01234567\$\-\.])+
add positive: 5! 
get a solution: (([af 	
 "#%&'()*+,/012345\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/01234567\$\-\.])+
add positive: 6! 
get a solution: (([af 	
 "#%&'()*+,/0123456\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/01234567\$\-\.])+
add positive:  !8
get a solution: (([af 	
 "#%&'()*+,/0123456\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/012345678\$\-\.])+
add positive:  !9
get a solution: (([af 	
 "#%&'()*+,/0123456\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789\$\-\.])+
add positive: 7! 
get a solution: (([af 	
 "#%&'()*+,/01234567\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789\$\-\.])+
add positive: 8! 
get a solution: (([af 	
 "#%&'()*+,/012345678\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789\$\-\.])+
add positive: 9! 
get a solution: (([af 	
 "#%&'()*+,/0123456789\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789\$\-\.])+
add positive: :! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789\$\-\.])+
add positive:  !:
get a solution: (([af 	
 "#%&'()*+,/0123456789:\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:\$\-\.])+
add positive:  !;
get a solution: (([af 	
 "#%&'()*+,/0123456789:\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;\$\-\.])+
add positive:  !?
get a solution: (([af 	
 "#%&'()*+,/0123456789:\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?\$\-\.])+
add positive:  !@
get a solution: (([af 	
 "#%&'()*+,/0123456789:\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@\$\-\.])+
add positive: ;! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@\$\-\.])+
add positive:  !A
get a solution: (([af 	
 "#%&'()*+,/0123456789:;\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@A\$\-\.])+
add positive: ?! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@A\$\-\.])+
add positive: @! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@A\$\-\.])+
add positive: A! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@A\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@A\$\-\.])+
add positive:  !B
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@A\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@AB\$\-\.])+
add positive: B! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@AB\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@AB\$\-\.])+
add positive: C! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABC\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@AB\$\-\.])+
add positive:  !C
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABC\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABC\$\-\.])+
add positive:  !D
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABC\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCD\$\-\.])+
add positive: D! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCD\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCD\$\-\.])+
add positive:  !E
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCD\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDE\$\-\.])+
add positive:  !F
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCD\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEF\$\-\.])+
add positive:  !G
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCD\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$\-\.])+
add positive:  !H
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCD\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$H\-\.])+
add positive: E! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDE\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$H\-\.])+
add positive: F! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEF\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$H\-\.])+
add positive: G! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$H\-\.])+
add positive:  !I
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HI\-\.])+
add positive:  !J
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJ\-\.])+
add positive: H! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$H\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJ\-\.])+
add positive: I! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HI\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJ\-\.])+
add positive: J! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJ\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJ\-\.])+
add positive: K! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJK\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJ\-\.])+
add positive: L! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKL\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJ\-\.])+
add positive:  !K
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKL\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJK\-\.])+
add positive: M! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLM\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJK\-\.])+
add positive:  !L
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLM\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKL\-\.])+
add positive: N! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMN\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKL\-\.])+
add positive:  !M
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMN\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLM\-\.])+
add positive: O! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNO\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLM\-\.])+
add positive:  !N
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNO\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMN\-\.])+
add positive:  !O
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNO\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNO\-\.])+
add positive:  !P
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNO\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-\.])+
add positive: P! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-\.])+
add positive: Q! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-\.])+
add positive: R! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.R])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-\.])+
add positive: S! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RS])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-\.])+
add positive: T! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RST])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-\.])+
add positive:  !Q
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RST])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.])+
add positive:  !R
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RST])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.R])+
add positive:  !S
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RST])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RS])+
add positive:  !T
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RST])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RST])+
add positive: U! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTU])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RST])+
add positive: V! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUV])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RST])+
add positive: W! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVW])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RST])+
add positive:  !U
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVW])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTU])+
add positive: X! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWX])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTU])+
add positive:  !V
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWX])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUV])+
add positive:  !W
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWX])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVW])+
add positive:  !X
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWX])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWX])+
add positive:  !Y
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWX])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXY])+
add positive:  !Z
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWX])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ])+
add positive: Y! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXY])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ])+
add positive: Z! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ])+
add positive:  ![
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[])+
add positive:  !\
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\])+
add positive: [! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\])+
add positive: \! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\])+
add positive:  !]
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]])+
add positive: ]! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]])+
add positive: ^! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]])+
add positive:  !^
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^])+
add positive: _! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^])+
add positive:  !_
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_])+
add positive: `! 
get a solution: (([af 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_])+
add positive: b! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abf])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_])+
add positive:  !`
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abf])+([!<=>])+)([a 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`])+
add positive:  !b
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abf])+([!<=>])+)([ab 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`])+
add positive: c! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcf])+([!<=>])+)([ab 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`])+
add positive:  !c
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcf])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abc])+
add positive: d! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdf])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abc])+
add positive:  !d
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdf])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcd])+
add positive: e! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdef])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcd])+
add positive: g! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefg])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcd])+
add positive: h! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefgh])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcd])+
add positive: i! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghi])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcd])+
add positive:  !e
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghi])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcde])+
add positive:  !f
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghi])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdef])+
add positive:  !g
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghi])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefg])+
add positive: j! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghij])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefg])+
add positive: k! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijk])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefg])+
add positive:  !h
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijk])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefgh])+
add positive: l! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijkl])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefgh])+
add positive:  !i
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijkl])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghi])+
add positive:  !j
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijkl])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghij])+
add positive:  !k
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijkl])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijk])+
add positive: m! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklm])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijk])+
add positive: n! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmn])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijk])+
add positive:  !l
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmn])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijkl])+
add positive:  !m
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmn])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklm])+
add positive:  !n
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmn])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmn])+
add positive: o! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmno])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmn])+
add positive:  !o
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmno])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmno])+
add positive: p! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnop])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmno])+
add positive: q! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopq])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmno])+
add positive: r! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqr])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmno])+
add positive:  !p
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqr])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnop])+
add positive:  !q
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqr])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopq])+
add positive:  !r
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqr])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqr])+
add positive: s! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrs])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqr])+
add positive:  !s
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrs])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrs])+
add positive: t! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrst])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrs])+
add positive: u! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstu])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrs])+
add positive:  !t
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstu])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrst])+
add positive: v! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuv])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrst])+
add positive:  !u
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuv])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstu])+
add positive: w! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvw])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstu])+
add positive: x! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwx])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstu])+
add positive: y! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxy])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstu])+
add positive:  !v
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxy])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuv])+
add positive:  !w
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxy])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvw])+
add positive: z! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvw])+
add positive: {! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvw])+
add positive:  !x
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwx])+
add positive: |! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwx])+
add positive:  !y
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxy])+
add positive: }! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxy])+
add positive:  !z
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz])+
add positive: ~! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz])+
add positive:  !{
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{])+
add positive:  !|
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|])+
add positive:  !}
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}])+
add positive:  !~
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ¡! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ¢! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  !
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: £! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive: ¤! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~])+
add positive:  ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ])+
add positive:  !¡
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡])+
add positive: ¥! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡])+
add positive: ¦! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡])+
add positive:  !¢
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢])+
add positive:  !£
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£])+
add positive: §! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£])+
add positive: ¨! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£])+
add positive: ©! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£])+
add positive: ª! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£])+
add positive: «! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£])+
add positive:  !¤
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤])+
add positive: ¬! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤])+
add positive: ­! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤])+
add positive: ®! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤])+
add positive:  !¥
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥])+
add positive: ¯! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥])+
add positive:  !¦
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦])+
add positive: °! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦])+
add positive: ±! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦])+
add positive:  !§
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§])+
add positive:  !¨
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨])+
add positive:  !©
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©])+
add positive: ²! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©])+
add positive: ³! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©])+
add positive:  !ª
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª])+
add positive:  !«
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«])+
add positive:  !¬
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬])+
add positive: ´! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬])+
add positive:  !­
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­])+
add positive: µ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­])+
add positive:  !®
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®])+
add positive: ¶! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®])+
add positive: ·! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®])+
add positive:  !¯
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯])+
add positive:  !°
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°])+
add positive:  !±
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±])+
add positive: ¸! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±])+
add positive:  !²
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²])+
add positive: ¹! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²])+
add positive: º! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²])+
add positive: »! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²])+
add positive: ¼! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²])+
add positive: ½! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²])+
add positive:  !³
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³])+
add positive:  !´
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´])+
add positive:  !µ
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ])+
add positive: ¾! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ])+
add positive:  !¶
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶])+
add positive: ¿! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶])+
add positive:  !·
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·])+
add positive:  !¸
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸])+
add positive: À! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿À])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸])+
add positive:  !¹
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿À])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹])+
add positive:  !º
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿À])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º])+
add positive: Á! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁ])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º])+
add positive: Â! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂ])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º])+
add positive:  !»
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂ])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»])+
add positive:  !¼
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂ])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼])+
add positive: Ã! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼])+
add positive:  !½
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½])+
add positive: Ä! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½])+
add positive: Å! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½])+
add positive: Æ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½])+
add positive: Ç! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½])+
add positive: È! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½])+
add positive: É! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½])+
add positive: Ê! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½])+
add positive: Ë! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊË\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½])+
add positive:  !¾
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊË\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾])+
add positive:  !¿
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊË\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿])+
add positive:  !À
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊË\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿À])+
add positive:  !Á
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊË\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁ])+
add positive: Ì! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁ])+
add positive: Í! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁ])+
add positive:  !Â
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂ])+
add positive: Î! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂ])+
add positive:  !Ã
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃ\$\-\.])+
add positive:  !Ä

10.15773892402649
timeout