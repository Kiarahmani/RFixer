
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
add positive: abcÃ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃ\$\-\.]){0,1}
add positive: abcÄ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄ\$\-\.]){0,1}
add positive: abcÅ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅ\$\-\.]){0,1}
add positive: abcÆ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆ\$\-\.]){0,1}
add positive: abcÇ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇ\$\-\.]){0,1}
add positive: abcÈ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈ\$\-\.]){0,1}
add positive: abcÉ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉ\$\-\.]){0,1}
add positive: abcÊ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊ\$\-\.]){0,1}
add positive: abcË
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊË\$\-\.]){0,1}
add positive: abcÌ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌ\$\-\.]){0,1}
add positive: abcÍ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍ\$\-\.]){0,1}
add positive: abcÎ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎ\$\-\.]){0,1}
add positive: abcÏ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏ\$\-\.]){0,1}
add positive: abcÐ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐ\$\-\.]){0,1}
add positive: abcÑ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑ\$\-\.]){0,1}
add positive: abcÒ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒ\$\-\.]){0,1}
add positive: abcÓ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓ\$\-\.]){0,1}
add positive: abcÔ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔ\$\-\.]){0,1}
add positive: abcÕ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕ\$\-\.]){0,1}
add positive: abcÖ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ\$\-\.]){0,1}
add positive: abc×
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×\$\-\.]){0,1}
add positive: abcØ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×Ø\$\-\.]){0,1}
add positive: abcÙ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙ\$\-\.]){0,1}
add positive: abcÚ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚ\$\-\.]){0,1}
add positive: abcÛ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛ\$\-\.]){0,1}
add positive: abcÜ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜ\$\-\.]){0,1}
add positive: abcÝ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝ\$\-\.]){0,1}
add positive: abcÞ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞ\$\-\.]){0,1}
add positive: abcß
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞß\$\-\.]){0,1}
add positive: abcà
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßà\$\-\.]){0,1}
add positive: abcá
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàá\$\-\.]){0,1}
add positive: abcâ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâ\$\-\.]){0,1}
add positive: abcã
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâã\$\-\.]){0,1}
add positive: abcä
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãä\$\-\.]){0,1}
add positive: abcå
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäå\$\-\.]){0,1}
add positive: abcæ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæ\$\-\.]){0,1}
add positive: abcç
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæç\$\-\.]){0,1}
add positive: abcè
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçè\$\-\.]){0,1}
add positive: abcé
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèé\$\-\.]){0,1}
add positive: abcê
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéê\$\-\.]){0,1}
add positive: abcë
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêë\$\-\.]){0,1}
add positive: abcì
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëì\$\-\.]){0,1}
add positive: abcí
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìí\$\-\.]){0,1}
add positive: abcî
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíî\$\-\.]){0,1}
add positive: abcï
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîï\$\-\.]){0,1}
add positive: abcð
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïð\$\-\.]){0,1}
add positive: abcñ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñ\$\-\.]){0,1}
add positive: abcò
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñò\$\-\.]){0,1}
add positive: abcó
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòó\$\-\.]){0,1}
add positive: abcô
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóô\$\-\.]){0,1}
add positive: abcõ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõ\$\-\.]){0,1}
add positive: abcö
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö\$\-\.]){0,1}
add positive: abc÷
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷\$\-\.]){0,1}
add positive: abcø
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷ø\$\-\.]){0,1}
add positive: abcù
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øù\$\-\.]){0,1}
add positive: abcú
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùú\$\-\.]){0,1}
add positive: abcû
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúû\$\-\.]){0,1}
add positive: abcü
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûü\$\-\.]){0,1}
add positive: abcý
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüý\$\-\.]){0,1}
add positive: abcþ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþ\$\-\.]){0,1}
add positive: abcÿ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿ\$\-\.]){0,1}
add positive: abcĀ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀ\$\-\.]){0,1}
add positive: abcā
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀā\$\-\.]){0,1}
add positive: abcĂ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂ\$\-\.]){0,1}
add positive: abcă
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂă\$\-\.]){0,1}
add positive: abcĄ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄ\$\-\.]){0,1}
add positive: abcą
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄą\$\-\.]){0,1}
add positive: abcĆ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆ\$\-\.]){0,1}
add positive: abcć
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆć\$\-\.]){0,1}
add positive: abcĈ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈ\$\-\.]){0,1}
add positive: abcĉ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉ\$\-\.]){0,1}
add positive: abcĊ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊ\$\-\.]){0,1}
add positive: abcċ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċ\$\-\.]){0,1}
add positive: abcČ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČ\$\-\.]){0,1}
add positive: abcč
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČč\$\-\.]){0,1}
add positive: abcĎ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎ\$\-\.]){0,1}
add positive: abcď
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎď\$\-\.]){0,1}
add positive: abcĐ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐ\$\-\.]){0,1}
add positive: abcđ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđ\$\-\.]){0,1}
add positive: abcĒ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒ\$\-\.]){0,1}
add positive: abcē
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒē\$\-\.]){0,1}
add positive: abcĔ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔ\$\-\.]){0,1}
add positive: abcĕ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕ\$\-\.]){0,1}
add positive: abcĖ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖ\$\-\.]){0,1}
add positive: abcė
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖė\$\-\.]){0,1}
add positive: abcĘ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖėĘ\$\-\.]){0,1}
add positive: abcę
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖėĘę\$\-\.]){0,1}
add positive: abcĚ
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖėĘęĚ\$\-\.]){0,1}
add positive: abcě
get a solution: ((ab)c)([ 	
 !"#%&'()*+,/0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdfghijklmnopqrstuvwxyz{|}~ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõö÷øùúûüýþÿĀāĂăĄąĆćĈĉĊċČčĎďĐđĒēĔĕĖėĘęĚě\$\-\.]){0,1}
add positive: abcĜ

5.065287828445435
timeout