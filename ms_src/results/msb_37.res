
Given the regular expression:

  abc[!e]

That that should match the strings:

  ✓ (0:4)    abcf
  ✓ (4:8)    abcd
  ✓ (8:12)   abc[
  ✓ (12:15)  abc

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■b)c)[!e]             fail dotstar or empty
  2      |  1     ((a■)c)[!e]             fail dotstar or empty
  3      |  1     ((ab)■)[!e]             fail dotstar or empty
  4      |  1     ((ab)c)■                fail dot
  5      |  2     ((■■)c)[!e]             fail dotstar or empty
  6      |  2     ((■b)■)[!e]             fail dotstar or empty
  7      |  2     ((■b)c)■                fail dot
  8      |  2     ((a■)■)[!e]             fail dotstar or empty
  9      |  2     ((a■)c)■                fail dot
  10     |  2     ((ab)■)■                fail dot
  11     |  2     ((ab)c)(■■)             fail dot
  12     |  2     ((ab)c)(■|■)            fail dot
  13     |  2     ((ab)c)(■){■}           get a solution: ((ab)c)([df[]){0,1}
add positive: abc 
get a solution: ((ab)c)([df[ ]){0,1}
add positive: abc
get a solution: ((ab)c)([df[ ]){0,1}
add positive: abc
get a solution: ((ab)c)([df[ ]){0,1}
add positive: abc
get a solution: ((ab)c)([df[ ]){0,1}
add positive: abc
get a solution: ((ab)c)([df[ ]){0,1}
add positive: abc
get a solution: ((ab)c)([df[ ]){0,1}
add positive: abc
get a solution: ((ab)c)([df[ ]){0,1}
add positive: abc
get a solution: ((ab)c)([df[ ]){0,1}
add positive: abc
get a solution: ((ab)c)([df[ ]){0,1}
add positive: abc	
get a solution: ((ab)c)([df	[ ]){0,1}
add positive: abc

get a solution: ((ab)c)([df	
[ ]){0,1}
add positive: abc
get a solution: ((ab)c)([df	
[ ]){0,1}
add positive: abc
get a solution: ((ab)c)([df	
[ ]){0,1}
add positive: abc
get a solution: ((ab)c)([df	
[ ]){0,1}
add positive: abc
get a solution: ((ab)c)([df	
[ ]){0,1}
add positive: abc
get a solution: ((ab)c)([df	
[ ]){0,1}
add positive: abc
get a solution: ((ab)c)([df	
[ ]){0,1}
add positive: abc
get a solution: ((ab)c)([df	
[ ]){0,1}
add positive: abc
get a solution: ((ab)c)([df	
[ ]){0,1}
add positive: abc
get a solution: ((ab)c)([df	
[ ]){0,1}
add positive: abc
get a solution: ((ab)c)([df 	
[]){0,1}
add positive: abc
get a solution: ((ab)c)([df 	
[]){0,1}
add positive: abc
get a solution: ((ab)c)([df 	
[]){0,1}
add positive: abc
get a solution: ((ab)c)([df 	
[]){0,1}
add positive: abc
get a solution: ((ab)c)([df 	
[]){0,1}
add positive: abc
get a solution: ((ab)c)([df 	
[]){0,1}
add positive: abc
get a solution: ((ab)c)([df 	
[]){0,1}
add positive: abc
get a solution: ((ab)c)([df 	
[]){0,1}
add positive: abc
get a solution: ((ab)c)([df 	
[]){0,1}
add positive: abc
get a solution: ((ab)c)([df 	
[]){0,1}
add positive: abc
get a solution: ((ab)c)([df 	
[]){0,1}
add positive: abc
get a solution: ((ab)c)([df 	
[]){0,1}
add positive: abc 
get a solution: ((ab)c)([df 	
[ ]){0,1}
add positive: abc!
get a solution: ((ab)c)([!df 	
[ ]){0,1}
add positive: abc"
get a solution: ((ab)c)([!"df 	
[ ]){0,1}
add positive: abc#
get a solution: ((ab)c)([!"#df 	
[ ]){0,1}
add positive: abc$
get a solution: ((ab)c)([!"#df \$	
[ ]){0,1}
add positive: abc%
get a solution: ((ab)c)([!"#d%f \$	
[ ]){0,1}
add positive: abc&
get a solution: ((ab)c)([!"#d%f& \$	
[ ]){0,1}
add positive: abc'
get a solution: ((ab)c)([!"#d%f&' \$	
[ ]){0,1}
add positive: abc(
get a solution: ((ab)c)([!"#d%f&'( \$	
[ ]){0,1}
add positive: abc)
get a solution: ((ab)c)([!"#d%f&'() \$	
[ ]){0,1}
add positive: abc*
get a solution: ((ab)c)([!"#d%f&'()* \$	
[ ]){0,1}
add positive: abc+
get a solution: ((ab)c)([!"#d%f&'()*+ \$	
[ ]){0,1}
add positive: abc,
get a solution: ((ab)c)([df 	
 !"#%&'()*+,\$[]){0,1}
add positive: abc-
get a solution: ((ab)c)([df 	
 !"#%&'()*+,\$\-[]){0,1}
add positive: abc.
get a solution: ((ab)c)([df 	
 !"#%&'()*+,\$\-\.[]){0,1}
add positive: abc/
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/\$\-\.[]){0,1}
add positive: abc0
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0\$\-\.[]){0,1}
add positive: abc1
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/01\$\-\.[]){0,1}
add positive: abc2
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/012\$\-\.[]){0,1}
add positive: abc3
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123\$\-\.[]){0,1}
add positive: abc4
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/01234\$\-\.[]){0,1}
add positive: abc5
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/012345\$\-\.[]){0,1}
add positive: abc6
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456\$\-\.[]){0,1}
add positive: abc7
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/01234567\$\-\.[]){0,1}
add positive: abc8
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/012345678\$\-\.[]){0,1}
add positive: abc9
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789\$\-\.[]){0,1}
add positive: abc:
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:\$\-\.[]){0,1}
add positive: abc;
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;\$\-\.[]){0,1}
add positive: abc<
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<\$\-\.[]){0,1}
add positive: abc=
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=\$\-\.[]){0,1}
add positive: abc>
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>\$\-\.[]){0,1}
add positive: abc?
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?\$\-\.[]){0,1}
add positive: abc@
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@\$\-\.[]){0,1}
add positive: abcA
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@A\$\-\.[]){0,1}
add positive: abcB
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@AB\$\-\.[]){0,1}
add positive: abcC
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@ABC\$\-\.[]){0,1}
add positive: abcD
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@ABCD\$\-\.[]){0,1}
add positive: abcE
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDE\$\-\.[]){0,1}
add positive: abcF
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEF\$\-\.[]){0,1}
add positive: abcG
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$\-\.[]){0,1}
add positive: abcH
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$H\-\.[]){0,1}
add positive: abcI
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HI\-\.[]){0,1}
add positive: abcJ
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJ\-\.[]){0,1}
add positive: abcK
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJK\-\.[]){0,1}
add positive: abcL
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKL\-\.[]){0,1}
add positive: abcM
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLM\-\.[]){0,1}
add positive: abcN
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMN\-\.[]){0,1}
add positive: abcO
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNO\-\.[]){0,1}
add positive: abcP
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-\.[]){0,1}
add positive: abcQ
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.[]){0,1}
add positive: abcR
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.R[]){0,1}
add positive: abcS
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RS[]){0,1}
add positive: abcT
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RST[]){0,1}
add positive: abcU
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTU[]){0,1}
add positive: abcV
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUV[]){0,1}
add positive: abcW
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVW[]){0,1}
add positive: abcX
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWX[]){0,1}
add positive: abcY
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXY[]){0,1}
add positive: abcZ
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[]){0,1}
add positive: abc\
get a solution: ((ab)c)([df 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]){0,1}
add positive: abc]
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]df]){0,1}
add positive: abc^
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^df]){0,1}
add positive: abc_
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_df]){0,1}
add positive: abc`
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`df]){0,1}
add positive: abca
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`adf]){0,1}
add positive: abcb
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abdf]){0,1}
add positive: abcc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdf]){0,1}
add positive: abcg
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfg]){0,1}
add positive: abch
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfgh]){0,1}
add positive: abci
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghi]){0,1}
add positive: abcj
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghij]){0,1}
add positive: abck
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijk]){0,1}
add positive: abcl
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijkl]){0,1}
add positive: abcm
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklm]){0,1}
add positive: abcn
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmn]){0,1}
add positive: abco
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmno]){0,1}
add positive: abcp
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnop]){0,1}
add positive: abcq
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopq]){0,1}
add positive: abcr
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqr]){0,1}
add positive: abcs
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrs]){0,1}
add positive: abct
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrst]){0,1}
add positive: abcu
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstu]){0,1}
add positive: abcv
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuv]){0,1}
add positive: abcw
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvw]){0,1}
add positive: abcx
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwx]){0,1}
add positive: abcy
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxy]){0,1}
add positive: abcz
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz]){0,1}
add positive: abc{
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{]){0,1}
add positive: abc|
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|]){0,1}
add positive: abc}
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}]){0,1}
add positive: abc~
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~]){0,1}
add positive: abc 
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ]){0,1}
add positive: abc¡
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡]){0,1}
add positive: abc¢
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢]){0,1}
add positive: abc£
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£]){0,1}
add positive: abc¤
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤]){0,1}
add positive: abc¥
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥]){0,1}
add positive: abc¦
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦]){0,1}
add positive: abc§
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§]){0,1}
add positive: abc¨
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨]){0,1}
add positive: abc©
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©]){0,1}
add positive: abcª
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª]){0,1}
add positive: abc«
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«]){0,1}
add positive: abc¬
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬]){0,1}
add positive: abc­
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­]){0,1}
add positive: abc®
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®]){0,1}
add positive: abc¯
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯]){0,1}
add positive: abc°
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°]){0,1}
add positive: abc±
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±]){0,1}
add positive: abc²
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²]){0,1}
add positive: abc³
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³]){0,1}
add positive: abc´
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´]){0,1}
add positive: abcµ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ]){0,1}
add positive: abc¶
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶]){0,1}
add positive: abc·
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·]){0,1}
add positive: abc¸
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸]){0,1}
add positive: abc¹
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹]){0,1}
add positive: abcº
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º]){0,1}
add positive: abc»
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»]){0,1}
add positive: abc¼
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼]){0,1}
add positive: abc½
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½]){0,1}
add positive: abc¾
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾]){0,1}
add positive: abc¿
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFG\$HIJKLMNOP\-Q\.RSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿]){0,1}
add positive: abcÀ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿À\$\-\.]){0,1}
add positive: abcÁ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁ\$\-\.]){0,1}
add positive: abcÂ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂ\$\-\.]){0,1}

3.030539035797119
timeout