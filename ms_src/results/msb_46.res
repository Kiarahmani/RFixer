
Given the regular expression:

  /(\d)+([\]\.\/\d\',o \|])*(\s)*

That that should match the strings:

  ✓ (0:8)    5'067.00
  ✓ (8:11)   7.7

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■(\d)+)([\]\.\/\d\',o \|])*)(\s)*fail dot
  2      |  1     ((/(■)+)([\]\.\/\d\',o \|])*)(\s)*fail dotstar or empty
  3      |  1     ((/(\d){■})([\]\.\/\d\',o \|])*)(\s)*fail dotstar or empty
  4      |  1     ((/(\d)+)(■)*)(\s)*     fail dotstar or empty
  5      |  1     ((/(\d)+)([\]\.\/\d\',o \|]){■})(\s)*fail dotstar or empty
  6      |  1     ((/(\d)+)([\]\.\/\d\',o \|])*)(■)*fail dotstar or empty
  7      |  1     ((/(\d)+)([\]\.\/\d\',o \|])*)(\s){■}fail dotstar or empty
  8      |  2     ((■(■)+)([\]\.\/\d\',o \|])*)(\s)*  (([57]([\.67'0])+)([\]\.\/\d\',o \|])*)(\s)*
template: ((■(■)+)([\]\.\/\d\',o \|])*)(\s)* size: 5 holes: 2 time: 3.360269ms
longest: #mn#((■(■)+)([\]\.\/\d\',o \|])*)(\s)*#mn# size: #ms#5#ms# holes: #mh#2#mh# time: #mt#3.360269#mt#ms

Computed in:

  #c#128#c#ms

timeSATSolver time:

  #s#3#s#ms

cost:

  #d#2#d#

Finds the following solutions (and the corresponding fitness):

  7    (([57]([\.67'0])+)([\]\.\/\d\',o \|])*)(\s)*

All done

last template: #t#((■(■)+)([\]\.\/\d\',o \|])*)(\s)*#t#
#num#8#num#
#dep#2#dep#
#t1#0#t1#
#t2#1#t2#
#t3#6#t3#
solution is #sol#(([57]([\.67'0])+)([\]\.\/\d\',o \|])*)(\s)*#sol#
before exit
