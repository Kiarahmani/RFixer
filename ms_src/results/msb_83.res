
Given the regular expression:

  ([!""\?#%'+,&-_:{;<=}~>\[\\@\]\^\$\(\)\*\+\.\|` ]){1,}

That that should match the strings:


And reject the strings:

  ✗ (0:4)    ." A
  ✗ (4:10)   ...  S
  ✗ (10:13)  , I
  ✗ (13:19)  ...  I
  ✗ (19:22)  "ID
  ✗ (22:28)  ...  F
  ✗ (28:31)  . I

Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■){1,}                 get a solution: ([∅]){1,}
add positive:  
get a solution: ( ){1,}
add positive: !
get a solution: ([! ]){1,}
add positive: "
get a solution: ([!" ]){1,}
add positive: #
get a solution: ([!"# ]){1,}
add positive: $
get a solution: ([!"#\$ ]){1,}
add positive: %
get a solution: ([!"#%\$ ]){1,}
add positive: &
get a solution: ([!"#%&\$ ]){1,}
add positive: '
get a solution: ([!"#%&'\$ ]){1,}
add positive: (
get a solution: ([!"#%&'\$( ]){1,}
add positive: )
get a solution: ([!"#%&'\$() ]){1,}
add positive: *
get a solution: ([!"#%&'\$()* ]){1,}
add positive: +
get a solution: ([!"#%&'\$()*+ ]){1,}
add positive: ,
get a solution: ([!"#%&'\$()*+, ]){1,}
add positive: -
get a solution: ([!"#%&'\$()*+,\- ]){1,}
add positive: .
get a solution: ([!"#%&'\$()*+,\-\. ]){1,}
add positive: :
get a solution: ([!"#%&'\$()*+,\-\.: ]){1,}
add positive: ;
get a solution: ([!"#%&'\$()*+,\-\.:; ]){1,}
add positive: <
get a solution: ([!"#%&'\$()*+,\-\.:;< ]){1,}
add positive: =
get a solution: ([!"#%&'\$()*+,\-\.:;<= ]){1,}
add positive: >
get a solution: ([!"#%&'\$()*+,\-\.:;<=> ]){1,}
add positive: ?
get a solution: ([!"#%&'\$()*+,\-\.:;<=>? ]){1,}
add positive: @
get a solution: ([!"#%&'\$()*+,\-\.:;<=>?@ ]){1,}
add positive: [
get a solution: ([!"#%&'\$()*+,\-\.:;[<=>?@ ]){1,}
add positive: \
get a solution: ([!"#%&'()*+,:;<=>?@\$\-\.[\ ]){1,}
add positive: ]
get a solution: ([!"#%&'()*+,:;<=>?@\$\-\.[\] ]){1,}
add positive: ^
get a solution: ([!"#%&'()*+,:;<=>?@\$\-\.[\]^ ]){1,}
add positive: _
get a solution: ([!"#%&'()*+,:;<=>?@\$\-\.[\]^_ ]){1,}
add positive: `
get a solution: ([!"#%&'()*+,:;<=>?@\$\-\.[\]^_` ]){1,}
add positive: {
get a solution: ([!"#%&'()*+,:;{<=>?@\$\-\.[\]^_` ]){1,}
add positive: |
get a solution: ([!"#%&'()*+,:;{|<=>?@\$\-\.[\]^_` ]){1,}
add positive: }
get a solution: ([!"#%&'()*+,:;{|<}=>?@\$\-\.[\]^_` ]){1,}
add positive: ~
get a solution: ([!"#%&'()*+,:;{|<}=>~?@\$\-\.[\]^_` ]){1,}
  ([!"#%&'()*+,:;{|<}=>~?@\$\-\.[\]^_` ]){1,}
template: (■){1,} size: 1 holes: 1 time: 1.657952ms
longest: #mn#(■){1,}#mn# size: #ms#1#ms# holes: #mh#1#mh# time: #mt#1.657952#mt#ms

Computed in:

  #c#600#c#ms

timeSATSolver time:

  #s#54#s#ms

cost:

  #d#1#d#

Finds the following solutions (and the corresponding fitness):

  32   ([!"#%&'()*+,:;{|<}=>~?@\$\-\.[\]^_` ]){1,}

All done

last template: #t#(■){1,}#t#
#num#1#num#
#dep#1#dep#
#t1#0#t1#
#t2#0#t2#
#t3#0#t3#
#p#32#p#
#n#0#n#
solution is #sol#([!"#%&'()*+,:;{|<}=>~?@\]\$\-\.[^_` ]){1,}#sol#
positive is \
auto cfail positives!!!!!!!!!!!!!!!
exception while checking
before exit

1.0218300819396973
success