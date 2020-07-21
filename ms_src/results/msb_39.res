
Given the regular expression:

  ((([0-2]){1}W|([21-1]){2}M)|([1-2]){1}Y)

That that should match the strings:

  ✓ (0:2)    3W

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (((■){1}W|([21-1]){2}M)|([1-2]){1}Y)get a solution: (((3){1}W|([21-1]){2}M)|([1-2]){1}Y)
add positive: 1W
add negative: 21M
  2      |  1     ((([0-2]){■}W|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  3      |  1     ((([0-2]){1}■|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  4      |  1     ((([0-2]){1}W|(■){2}M)|([1-2]){1}Y)fail dotstar or empty
  5      |  1     ((([0-2]){1}W|([21-1]){■}M)|([1-2]){1}Y)fail dotstar or empty
  6      |  1     ((([0-2]){1}W|([21-1]){2}■)|([1-2]){1}Y)fail dotstar or empty
  7      |  1     ((([0-2]){1}W|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  8      |  1     ((([0-2]){1}W|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  9      |  1     ((([0-2]){1}W|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  10     |  2     (((■){■}W|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  11     |  2     (((■){1}■|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  12     |  2     (((■){1}W|(■){2}M)|([1-2]){1}Y)get a solution: ((([13]){1}W|([∅]){2}M)|([1-2]){1}Y)
add positive: 2W
get a solution: ((([123]){1}W|([∅]){2}M)|([1-2]){1}Y)
add positive: 3M
  13     |  2     (((■){1}W|([21-1]){■}M)|([1-2]){1}Y)fail dotstar or empty
  14     |  2     (((■){1}W|([21-1]){2}■)|([1-2]){1}Y)fail dotstar or empty
  15     |  2     (((■){1}W|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  16     |  2     (((■){1}W|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  17     |  2     (((■){1}W|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  18     |  2     ((■W|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  19     |  2     (((■■){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  20     |  2     ((((■|■)){1}W|([21-1]){2}M)|([1-2]){1}Y)fail solve
  21     |  2     ((((■){■}){1}W|([21-1]){2}M)|([1-2]){1}Y)fail dot
  22     |  2     ((([0-2]){■}■|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  23     |  2     ((([0-2]){■}W|(■){2}M)|([1-2]){1}Y)fail dotstar or empty
  24     |  2     ((([0-2]){■}W|([21-1]){■}M)|([1-2]){1}Y)fail dotstar or empty
  25     |  2     ((([0-2]){■}W|([21-1]){2}■)|([1-2]){1}Y)fail dotstar or empty
  26     |  2     ((([0-2]){■}W|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  27     |  2     ((([0-2]){■}W|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  28     |  2     ((([0-2]){■}W|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  29     |  2     ((([0-2]){1}■|(■){2}M)|([1-2]){1}Y)fail dotstar or empty
  30     |  2     ((([0-2]){1}■|([21-1]){■}M)|([1-2]){1}Y)fail dotstar or empty
  31     |  2     ((([0-2]){1}■|([21-1]){2}■)|([1-2]){1}Y)fail dotstar or empty
  32     |  2     ((([0-2]){1}■|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  33     |  2     ((([0-2]){1}■|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  34     |  2     ((([0-2]){1}■|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  35     |  2     ((([0-2]){1}W|(■){■}M)|([1-2]){1}Y)fail dotstar or empty
  36     |  2     ((([0-2]){1}W|(■){2}■)|([1-2]){1}Y)fail dot
  37     |  2     ((([0-2]){1}W|(■){2}M)|(■){1}Y)fail dotstar or empty
  38     |  2     ((([0-2]){1}W|(■){2}M)|([1-2]){■}Y)fail dotstar or empty
  39     |  2     ((([0-2]){1}W|(■){2}M)|([1-2]){1}■)fail dotstar or empty
  40     |  2     ((([0-2]){1}W|■M)|([1-2]){1}Y)fail dotstar or empty
  41     |  2     ((([0-2]){1}W|([21-1]){■}■)|([1-2]){1}Y)fail dot
  42     |  2     ((([0-2]){1}W|([21-1]){■}M)|(■){1}Y)fail dotstar or empty
  43     |  2     ((([0-2]){1}W|([21-1]){■}M)|([1-2]){■}Y)fail dotstar or empty
  44     |  2     ((([0-2]){1}W|([21-1]){■}M)|([1-2]){1}■)fail dotstar or empty
  45     |  2     ((([0-2]){1}W|([21-1]){2}■)|(■){1}Y)fail dotstar or empty
  46     |  2     ((([0-2]){1}W|([21-1]){2}■)|([1-2]){■}Y)fail dotstar or empty
  47     |  2     ((([0-2]){1}W|([21-1]){2}■)|([1-2]){1}■)fail dotstar or empty
  48     |  2     ((([0-2]){1}W|([21-1]){2}M)|(■){■}Y)fail dotstar or empty
  49     |  2     ((([0-2]){1}W|([21-1]){2}M)|(■){1}■)fail dotstar or empty
  50     |  2     ((([0-2]){1}W|([21-1]){2}M)|■Y)fail dotstar or empty
  51     |  2     ((([0-2]){1}W|([21-1]){2}M)|([1-2]){■}■)fail dotstar or empty
  52     |  3     (((■){■}■|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  53     |  3     (((■){■}W|(■){2}M)|([1-2]){1}Y)fail dot
  54     |  3     (((■){■}W|([21-1]){■}M)|([1-2]){1}Y)fail dotstar or empty
  55     |  3     (((■){■}W|([21-1]){2}■)|([1-2]){1}Y)fail dotstar or empty
  56     |  3     (((■){■}W|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  57     |  3     (((■){■}W|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  58     |  3     (((■){■}W|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  59     |  3     (((■){1}■|(■){2}M)|([1-2]){1}Y)get a solution: ((([123]){1}[WM]|([∅]){2}M)|([1-2]){1}Y)
add positive: 4M
get a solution: ((([1234]){1}[WM]|([∅]){2}M)|([1-2]){1}Y)
add positive: 5M
add negative: 4W
  unsatisfiable SAT formula       
  60     |  3     (((■){1}■|([21-1]){■}M)|([1-2]){1}Y)  unsatisfiable SAT formula       
  61     |  3     (((■){1}■|([21-1]){2}■)|([1-2]){1}Y)  unsatisfiable SAT formula       
  62     |  3     (((■){1}■|([21-1]){2}M)|(■){1}Y)fail dotstar or empty
  63     |  3     (((■){1}■|([21-1]){2}M)|([1-2]){■}Y)fail dotstar or empty
  64     |  3     (((■){1}■|([21-1]){2}M)|([1-2]){1}■)fail dotstar or empty
  65     |  3     ((■■|([21-1]){2}M)|([1-2]){1}Y)fail dotstar or empty
  66     |  3     (((■){1}W|(■){■}M)|([1-2]){1}Y)get a solution: ((([123]){1}W|([345]){1}M)|([1-2]){1}Y)
add positive: 6M
get a solution: ((([123]){1}W|([3456]){1}M)|([1-2]){1}Y)
add positive: 1M
get a solution: ((([123]){1}W|([13456]){1}M)|([1-2]){1}Y)
add positive: 2M
get a solution: ((([123]){1}W|([123456]){1}M)|([1-2]){1}Y)
add positive: 7M
get a solution: ((([123]){1}W|([1234567]){1}M)|([1-2]){1}Y)
add positive: 8M
get a solution: ((([123]){1}W|([12345678]){1}M)|([1-2]){1}Y)
add positive: 9M

1.0221168994903564
timeout