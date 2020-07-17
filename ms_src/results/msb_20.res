
Given the regular expression:

  (UAD){3}([*0-9a-zA-Z]){4}([*0-9a-zA-Z]){4}

That that should match the strings:

  ✓ (0:13)   REF-12AB-1A3B

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((■A)D){3}([*0-9a-zA-Z]){4})([*0-9a-zA-Z]){4}fail dotstar or empty
  2      |  1     (((U■)D){3}([*0-9a-zA-Z]){4})([*0-9a-zA-Z]){4}fail dotstar or empty
  3      |  1     (((UA)■){3}([*0-9a-zA-Z]){4})([*0-9a-zA-Z]){4}fail dotstar or empty
  4      |  1     (((UA)D){■}([*0-9a-zA-Z]){4})([*0-9a-zA-Z]){4}fail dotstar or empty
  5      |  1     (((UA)D){3}(■){4})([*0-9a-zA-Z]){4}fail dotstar or empty
  6      |  1     (((UA)D){3}([*0-9a-zA-Z]){■})([*0-9a-zA-Z]){4}fail dotstar or empty
  7      |  1     (((UA)D){3}([*0-9a-zA-Z]){4})(■){4}fail dotstar or empty
  8      |  1     (((UA)D){3}([*0-9a-zA-Z]){4})([*0-9a-zA-Z]){■}fail dotstar or empty
  9      |  2     (((■■)D){3}([*0-9a-zA-Z]){4})([*0-9a-zA-Z]){4}fail dotstar or empty
  10     |  2     (((■A)■){3}([*0-9a-zA-Z]){4})([*0-9a-zA-Z]){4}fail dotstar or empty
  11     |  2     (((■A)D){■}([*0-9a-zA-Z]){4})([*0-9a-zA-Z]){4}fail dotstar or empty
  12     |  2     (((■A)D){3}(■){4})([*0-9a-zA-Z]){4}fail dotstar or empty
  13     |  2     (((■A)D){3}([*0-9a-zA-Z]){■})([*0-9a-zA-Z]){4}fail dotstar or empty
  14     |  2     (((■A)D){3}([*0-9a-zA-Z]){4})(■){4}fail dotstar or empty
  15     |  2     (((■A)D){3}([*0-9a-zA-Z]){4})([*0-9a-zA-Z]){■}fail dotstar or empty
  16     |  2     (((U■)■){3}([*0-9a-zA-Z]){4})([*0-9a-zA-Z]){4}fail dotstar or empty
  17     |  2     (((U■)D){■}([*0-9a-zA-Z]){4})([*0-9a-zA-Z]){4}fail dotstar or empty
  18     |  2     (((U■)D){3}(■){4})([*0-9a-zA-Z]){4}fail dotstar or empty
  19     |  2     (((U■)D){3}([*0-9a-zA-Z]){■})([*0-9a-zA-Z]){4}fail dotstar or empty
  20     |  2     (((U■)D){3}([*0-9a-zA-Z]){4})(■){4}fail dotstar or empty
  21     |  2     (((U■)D){3}([*0-9a-zA-Z]){4})([*0-9a-zA-Z]){■}fail dotstar or empty
  22     |  2     (((UA)■){■}([*0-9a-zA-Z]){4})([*0-9a-zA-Z]){4}fail dotstar or empty
  23     |  2     (((UA)■){3}(■){4})([*0-9a-zA-Z]){4}fail dotstar or empty
  24     |  2     (((UA)■){3}([*0-9a-zA-Z]){■})([*0-9a-zA-Z]){4}fail dotstar or empty
  25     |  2     (((UA)■){3}([*0-9a-zA-Z]){4})(■){4}fail dotstar or empty
  26     |  2     (((UA)■){3}([*0-9a-zA-Z]){4})([*0-9a-zA-Z]){■}fail dotstar or empty
  27     |  2     (((UA)D){■}(■){4})([*0-9a-zA-Z]){4}fail dot
  28     |  2     (((UA)D){■}([*0-9a-zA-Z]){■})([*0-9a-zA-Z]){4}fail dotstar or empty
  29     |  2     (((UA)D){■}([*0-9a-zA-Z]){4})(■){4}fail dotstar or empty
  30     |  2     (((UA)D){■}([*0-9a-zA-Z]){4})([*0-9a-zA-Z]){■}fail dotstar or empty
  31     |  2     (■([*0-9a-zA-Z]){4})([*0-9a-zA-Z]){4}fail dotstar or empty
  32     |  2     (((UA)D){3}(■){■})([*0-9a-zA-Z]){4}fail dotstar or empty
  33     |  2     (((UA)D){3}(■){4})(■){4}fail dotstar or empty
  34     |  2     (((UA)D){3}(■){4})([*0-9a-zA-Z]){■}fail dotstar or empty
  35     |  2     (((UA)D){3}■)([*0-9a-zA-Z]){4}fail dotstar or empty
  36     |  2     (((UA)D){3}([*0-9a-zA-Z]){■})(■){4}fail dotstar or empty
  37     |  2     (((UA)D){3}([*0-9a-zA-Z]){■})([*0-9a-zA-Z]){■}fail dotstar or empty
  38     |  2     (((UA)D){3}([*0-9a-zA-Z]){4})(■){■}fail dotstar or empty
  39     |  2     (((UA)D){3}([*0-9a-zA-Z]){4})■fail dotstar or empty
  40     |  3     (((■■)■){3}([*0-9a-zA-Z]){4})([*0-9a-zA-Z]){4}fail dotstar or empty
  41     |  3     (((■■)D){■}([*0-9a-zA-Z]){4})([*0-9a-zA-Z]){4}fail dotstar or empty
  42     |  3     (((■■)D){3}(■){4})([*0-9a-zA-Z]){4}fail dotstar or empty
  43     |  3     (((■■)D){3}([*0-9a-zA-Z]){■})([*0-9a-zA-Z]){4}fail dotstar or empty
  44     |  3     (((■■)D){3}([*0-9a-zA-Z]){4})(■){4}fail dotstar or empty
  45     |  3     (((■■)D){3}([*0-9a-zA-Z]){4})([*0-9a-zA-Z]){■}fail dotstar or empty
  46     |  3     (((■)D){3}([*0-9a-zA-Z]){4})([*0-9a-zA-Z]){4}fail dotstar or empty
  47     |  3     (((■A)■){■}([*0-9a-zA-Z]){4})([*0-9a-zA-Z]){4}fail dotstar or empty
  48     |  3     (((■A)■){3}(■){4})([*0-9a-zA-Z]){4}fail dotstar or empty
  49     |  3     (((■A)■){3}([*0-9a-zA-Z]){■})([*0-9a-zA-Z]){4}fail dotstar or empty
  50     |  3     (((■A)■){3}([*0-9a-zA-Z]){4})(■){4}fail dotstar or empty
  51     |  3     (((■A)■){3}([*0-9a-zA-Z]){4})([*0-9a-zA-Z]){■}fail dotstar or empty
  52     |  3     (((■A)D){■}(■){4})([*0-9a-zA-Z]){4}fail dot
  53     |  3     (((■A)D){■}([*0-9a-zA-Z]){■})([*0-9a-zA-Z]){4}fail dotstar or empty
  54     |  3     (((■A)D){■}([*0-9a-zA-Z]){4})(■){4}fail dotstar or empty
  55     |  3     (((■A)D){■}([*0-9a-zA-Z]){4})([*0-9a-zA-Z]){■}fail dotstar or empty
  56     |  3     (((■A)D){3}(■){■})([*0-9a-zA-Z]){4}fail dotstar or empty
  57     |  3     (((■A)D){3}(■){4})(■){4}fail dotstar or empty
  58     |  3     (((■A)D){3}(■){4})([*0-9a-zA-Z]){■}fail dotstar or empty
  59     |  3     (((■A)D){3}■)([*0-9a-zA-Z]){4}fail dotstar or empty
  60     |  3     (((■A)D){3}([*0-9a-zA-Z]){■})(■){4}fail dotstar or empty
  61     |  3     (((■A)D){3}([*0-9a-zA-Z]){■})([*0-9a-zA-Z]){■}fail dotstar or empty
  62     |  3     (((■A)D){3}([*0-9a-zA-Z]){4})(■){■}fail dotstar or empty
  63     |  3     (((■A)D){3}([*0-9a-zA-Z]){4})■fail dotstar or empty
  64     |  3     (((U■)■){■}([*0-9a-zA-Z]){4})([*0-9a-zA-Z]){4}fail dotstar or empty
  65     |  3     (((U■)■){3}(■){4})([*0-9a-zA-Z]){4}fail dotstar or empty
  66     |  3     (((U■)■){3}([*0-9a-zA-Z]){■})([*0-9a-zA-Z]){4}fail dotstar or empty
  67     |  3     (((U■)■){3}([*0-9a-zA-Z]){4})(■){4}fail dotstar or empty
  68     |  3     (((U■)■){3}([*0-9a-zA-Z]){4})([*0-9a-zA-Z]){■}fail dotstar or empty
  69     |  3     (((U■)D){■}(■){4})([*0-9a-zA-Z]){4}fail dot
  70     |  3     (((U■)D){■}([*0-9a-zA-Z]){■})([*0-9a-zA-Z]){4}fail dotstar or empty
  71     |  3     (((U■)D){■}([*0-9a-zA-Z]){4})(■){4}fail dotstar or empty
  72     |  3     (((U■)D){■}([*0-9a-zA-Z]){4})([*0-9a-zA-Z]){■}fail dotstar or empty
  73     |  3     (((U■)D){3}(■){■})([*0-9a-zA-Z]){4}fail dotstar or empty
  74     |  3     (((U■)D){3}(■){4})(■){4}fail dotstar or empty
  75     |  3     (((U■)D){3}(■){4})([*0-9a-zA-Z]){■}fail dotstar or empty
  76     |  3     (((U■)D){3}■)([*0-9a-zA-Z]){4}fail dotstar or empty
  77     |  3     (((U■)D){3}([*0-9a-zA-Z]){■})(■){4}fail dotstar or empty
  78     |  3     (((U■)D){3}([*0-9a-zA-Z]){■})([*0-9a-zA-Z]){■}fail dotstar or empty
  79     |  3     (((U■)D){3}([*0-9a-zA-Z]){4})(■){■}fail dotstar or empty
  80     |  3     (((U■)D){3}([*0-9a-zA-Z]){4})■fail dotstar or empty
  81     |  3     (((UA)■){■}(■){4})([*0-9a-zA-Z]){4}fail dot
  82     |  3     (((UA)■){■}([*0-9a-zA-Z]){■})([*0-9a-zA-Z]){4}fail dotstar or empty
  83     |  3     (((UA)■){■}([*0-9a-zA-Z]){4})(■){4}fail dotstar or empty
  84     |  3     (((UA)■){■}([*0-9a-zA-Z]){4})([*0-9a-zA-Z]){■}fail dotstar or empty
  85     |  3     (((UA)■){3}(■){■})([*0-9a-zA-Z]){4}fail dotstar or empty
  86     |  3     (((UA)■){3}(■){4})(■){4}fail dotstar or empty
  87     |  3     (((UA)■){3}(■){4})([*0-9a-zA-Z]){■}fail dotstar or empty
  88     |  3     (((UA)■){3}■)([*0-9a-zA-Z]){4}fail dotstar or empty
  89     |  3     (((UA)■){3}([*0-9a-zA-Z]){■})(■){4}fail dotstar or empty
  90     |  3     (((UA)■){3}([*0-9a-zA-Z]){■})([*0-9a-zA-Z]){■}fail dotstar or empty
  91     |  3     (((UA)■){3}([*0-9a-zA-Z]){4})(■){■}fail dotstar or empty
  92     |  3     (((UA)■){3}([*0-9a-zA-Z]){4})■fail dotstar or empty
  93     |  3     (((UA)D){■}(■){■})([*0-9a-zA-Z]){4}  (((UA)D){0}([A1\-2BREF]){1,9})([*0-9a-zA-Z]){4}
template: (((UA)D){■}(■){■})([*0-9a-zA-Z]){4} size: 7 holes: 5 time: 3.520382ms
longest: #mn#(((UA)D){■}(■){■})([*0-9a-zA-Z]){4}#mn# size: #ms#7#ms# holes: #mh#5#mh# time: #mt#3.520382#mt#ms

Computed in:

  #c#382#c#ms

timeSATSolver time:

  #s#4#s#ms

cost:

  #d#3#d#

Finds the following solutions (and the corresponding fitness):

  8    (((UA)D){0}([A1\-2BREF]){1,9})([*0-9a-zA-Z]){4}

All done

last template: #t#(((UA)D){■}(■){■})([*0-9a-zA-Z]){4}#t#
#num#93#num#
#dep#3#dep#
#t1#0#t1#
#t2#4#t2#
#t3#88#t3#
solution is #sol#(((UA)D){0}([A1\-2BREF]){1,9})([*0-9a-zA-Z]){4}#sol#
before exit
