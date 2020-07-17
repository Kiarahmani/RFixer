
Given the regular expression:

  ([a]){1}([b]){1}[aaaaaaabbbbbbbcccccccc||||||||]([b]){1}([a]){1}

That that should match the strings:

  ✓ (0:6)    abccba
  ✓ (6:14)   abccabba

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((■){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dotstar or empty
  2      |  1     (((([a]){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dotstar or empty
  3      |  1     (((([a]){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  4      |  1     (((([a]){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dotstar or empty
  5      |  1     (((([a]){1}([b]){1})■)([b]){1})([a]){1}fail dot
  6      |  1     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  7      |  1     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dotstar or empty
  8      |  1     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dotstar or empty
  9      |  1     (((([a]){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dotstar or empty
  10     |  2     ((((■){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dotstar or empty
  11     |  2     ((((■){1}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  12     |  2     ((((■){1}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  13     |  2     ((((■){1}([b]){1})■)([b]){1})([a]){1}fail dot
  14     |  2     ((((■){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  15     |  2     ((((■){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dotstar or empty
  16     |  2     ((((■){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dotstar or empty
  17     |  2     ((((■){1}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dotstar or empty
  18     |  2     (((■([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dotstar or empty
  19     |  2     (((([a]){■}(■){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dot
  20     |  2     (((([a]){■}([b]){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}fail dotstar or empty
  21     |  2     (((([a]){■}([b]){1})■)([b]){1})([a]){1}fail dot
  22     |  2     (((([a]){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])(■){1})([a]){1}fail dot
  23     |  2     (((([a]){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){■})([a]){1}fail dotstar or empty
  24     |  2     (((([a]){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})(■){1}fail dotstar or empty
  25     |  2     (((([a]){■}([b]){1})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){■}fail dotstar or empty
  26     |  2     (((([a]){1}(■){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}  (((([a]){1}([abc]){1,4})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}
template: (((([a]){1}(■){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1} size: 8 holes: 3 time: 4.083549ms
longest: #mn#(((([a]){1}(■){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}#mn# size: #ms#8#ms# holes: #mh#3#mh# time: #mt#4.083549#mt#ms

Computed in:

  #c#287#c#ms

timeSATSolver time:

  #s#4#s#ms

cost:

  #d#2#d#

Finds the following solutions (and the corresponding fitness):

  3    (((([a]){1}([abc]){1,4})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}

All done

last template: #t#(((([a]){1}(■){■})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}#t#
#num#26#num#
#dep#2#dep#
#t1#0#t1#
#t2#10#t2#
#t3#15#t3#
solution is #sol#(((([a]){1}([abc]){1,4})[aaaaaaabbbbbbbcccccccc||||||||])([b]){1})([a]){1}#sol#
before exit
