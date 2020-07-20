
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
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄ\$\-\.])+
add positive: Ï! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄ\$\-\.])+
add positive:  !Å
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅ\$\-\.])+
add positive:  !Æ
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆ\$\-\.])+
add positive:  !Ç
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇ\$\-\.])+
add positive:  !È
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈ\$\-\.])+
add positive:  !É
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉ\$\-\.])+
add positive:  !Ê
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊ\$\-\.])+
add positive: Ð! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊ\$\-\.])+
add positive:  !Ë
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊË\$\-\.])+
add positive:  !Ì
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌ\$\-\.])+
add positive: Ñ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌ\$\-\.])+
add positive:  !Í
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍ\$\-\.])+
add positive: Ò! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍ\$\-\.])+
add positive:  !Î
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎ\$\-\.])+
add positive:  !Ï
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏ\$\-\.])+
add positive: Ó! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏ\$\-\.])+
add positive: Ô! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏ\$\-\.])+
add positive: Õ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏ\$\-\.])+
add positive:  !Ð
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐ\$\-\.])+
add positive: Ö! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐ\$\-\.])+
add positive: ×! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐ\$\-\.])+
add positive:  !Ñ
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑ\$\-\.])+
add positive: Ø! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×Ø\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑ\$\-\.])+
add positive:  !Ò
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×Ø\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒ\$\-\.])+
add positive: Ù! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒ\$\-\.])+
add positive:  !Ó
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓ\$\-\.])+
add positive: Ú! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓ\$\-\.])+
add positive:  !Ô
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔ\$\-\.])+
add positive: Û! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔ\$\-\.])+
add positive: Ü! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔ\$\-\.])+
add positive: Ý! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔ\$\-\.])+
add positive:  !Õ
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕ\$\-\.])+
add positive: Þ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕ\$\-\.])+
add positive: ß! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞß\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕ\$\-\.])+
add positive: à! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßà\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕ\$\-\.])+
add positive:  !Ö
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßà\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ\$\-\.])+
add positive:  !×
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßà\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×\$\-\.])+
add positive: á! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàá\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×\$\-\.])+
add positive: â! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×\$\-\.])+
add positive: ã! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâã\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×\$\-\.])+
add positive: ä! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãä\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×\$\-\.])+
add positive: å! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäå\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×\$\-\.])+
add positive:  !Ø
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäå\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×Ø\$\-\.])+
add positive: æ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×Ø\$\-\.])+
add positive: ç! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæç\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×Ø\$\-\.])+
add positive: è! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçè\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×Ø\$\-\.])+
add positive:  !Ù
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçè\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙ\$\-\.])+
add positive:  !Ú
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçè\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚ\$\-\.])+
add positive: é! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèé\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚ\$\-\.])+
add positive: ê! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéê\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚ\$\-\.])+
add positive:  !Û
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéê\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛ\$\-\.])+
add positive: ë! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêë\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛ\$\-\.])+
add positive: ì! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëì\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛ\$\-\.])+
add positive:  !Ü
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëì\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜ\$\-\.])+
add positive:  !Ý
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëì\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝ\$\-\.])+
add positive:  !Þ
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëì\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞ\$\-\.])+
add positive:  !ß
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëì\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞß\$\-\.])+
add positive: í! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìí\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞß\$\-\.])+
add positive:  !à
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìí\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßà\$\-\.])+
add positive:  !á
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìí\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàá\$\-\.])+
add positive:  !â
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìí\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâ\$\-\.])+
add positive: î! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíî\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâ\$\-\.])+
add positive:  !ã
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíî\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâã\$\-\.])+
add positive:  !ä
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíî\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãä\$\-\.])+
add positive:  !å
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíî\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäå\$\-\.])+
add positive: ï! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîï\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäå\$\-\.])+
add positive: ð! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïð\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäå\$\-\.])+
add positive:  !æ
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïð\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæ\$\-\.])+
add positive:  !ç
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïð\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæç\$\-\.])+
add positive: ñ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæç\$\-\.])+
add positive:  !è
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçè\$\-\.])+
add positive: ò! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñò\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçè\$\-\.])+
add positive: ó! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòó\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçè\$\-\.])+
add positive:  !é
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòó\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèé\$\-\.])+
add positive:  !ê
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòó\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéê\$\-\.])+
add positive: ô! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóô\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéê\$\-\.])+
add positive:  !ë
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóô\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêë\$\-\.])+
add positive:  !ì
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóô\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëì\$\-\.])+
add positive:  !í
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóô\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìí\$\-\.])+
add positive:  !î
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóô\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíî\$\-\.])+
add positive: õ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíî\$\-\.])+
add positive:  !ï
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîï\$\-\.])+
add positive:  !ð
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïð\$\-\.])+
add positive: ö! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïð\$\-\.])+
add positive:  !ñ
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñ\$\-\.])+
add positive: ÷! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñ\$\-\.])+
add positive:  !ò
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñò\$\-\.])+
add positive: ø! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷ø\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñò\$\-\.])+
add positive:  !ó
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷ø\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòó\$\-\.])+
add positive:  !ô
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷ø\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóô\$\-\.])+
add positive: ù! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øù\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóô\$\-\.])+
add positive:  !õ
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øù\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõ\$\-\.])+
add positive:  !ö
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øù\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö\$\-\.])+
add positive: ú! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùú\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö\$\-\.])+
add positive:  !÷
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùú\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷\$\-\.])+
add positive:  !ø
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùú\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷ø\$\-\.])+
add positive:  !ù
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùú\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øù\$\-\.])+
add positive: û! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúû\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øù\$\-\.])+
add positive:  !ú
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúû\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùú\$\-\.])+
add positive:  !û
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúû\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúû\$\-\.])+
add positive:  !ü
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúû\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûü\$\-\.])+
add positive:  !ý
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúû\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüý\$\-\.])+
add positive:  !þ
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúû\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþ\$\-\.])+
add positive:  !ÿ
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúû\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿ\$\-\.])+
add positive:  !Ā
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúû\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀ\$\-\.])+
add positive:  !ā
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúû\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀā\$\-\.])+
add positive:  !Ă
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúû\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂ\$\-\.])+
add positive:  !ă
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúû\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂă\$\-\.])+
add positive:  !Ą
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúû\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄ\$\-\.])+
add positive: ü! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûü\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄ\$\-\.])+
add positive:  !ą
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûü\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄą\$\-\.])+
add positive: ý! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüý\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄą\$\-\.])+
add positive: þ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄą\$\-\.])+
add positive: ÿ! 
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄą\$\-\.])+
add positive:  !Ć
get a solution: (([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿ\$\-\.])+([!<=>])+)([ 	
 "#%&'()*+,/0123456789:;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆ\$\-\.])+
add positive:  !ć
10.105397939682007
timeout