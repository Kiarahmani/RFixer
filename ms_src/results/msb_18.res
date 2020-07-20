
Given the regular expression:

  [a-z][_][a-z]

That that should match the strings:

  ✓ (0:9)    blah_blah

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     (■[_])[a-z]             fail dotstar or empty
  2      |  1     ([a-z]■)[a-z]           fail dot
  3      |  1     ([a-z][_])■             fail dotstar or empty
  4      |  2     (■■)[a-z]               fail dot
  5      |  2     (■[_])■                 fail dot
  6      |  2     ([a-z]■)■               fail dot
  7      |  2     ([a-z](■■))[a-z]        fail dot
  8      |  2     ([a-z](■|■))[a-z]       fail dot
  9      |  2     ([a-z](■){■})[a-z]      get a solution: ([a-z]([abhl_]){1,7})[a-z]
add positive: ac_a
add negative: aaa
get a solution: ([a-z]([abchl_]){2,7})[a-z]
add positive: a_d
add negative: a__a
  unsatisfiable SAT formula       
  10     |  3     (■■)■                   fail dot
  11     |  3     (■)[a-z]                fail dot
  12     |  3     ((■■)■)[a-z]            fail dot
  13     |  3     ((■|■)■)[a-z]           fail dot
  14     |  3     ((■){■}■)[a-z]            unsatisfiable SAT formula       
  15     |  3     ((■■)[_])■              fail dot
  16     |  3     ((■|■)[_])■             fail dot
  17     |  3     ((■){■}[_])■            fail dot
  18     |  3     (■[_])(■■)              fail dot
  19     |  3     (■[_])(■|■)             fail dot
  20     |  3     (■[_])(■){■}            fail dot
  21     |  3     ([a-z](■■))■            fail dot
  22     |  3     ([a-z](■|■))■           fail dot
  23     |  3     ([a-z](■){■})■            unsatisfiable SAT formula       
  24     |  3     ([a-z]■)(■■)            fail dot
  25     |  3     ([a-z]■)(■|■)           fail dot
  26     |  3     ([a-z]■)(■){■}            unsatisfiable SAT formula       
  27     |  3     ([a-z](■))[a-z]         fail dot
  28     |  3     ([a-z]((■■)■))[a-z]     fail dot
  29     |  3     ([a-z]((■|■)■))[a-z]    fail dot
  30     |  3     ([a-z]((■){■}■))[a-z]     unsatisfiable SAT formula       
  31     |  3     ([a-z](■■|■))[a-z]      fail dot
  32     |  3     ([a-z]((■|■)|■))[a-z]   fail dot
  33     |  3     ([a-z]((■){■}|■))[a-z]    unsatisfiable SAT formula       
  34     |  3     ([a-z](■■){■})[a-z]     fail dot
  35     |  3     ([a-z]((■|■)){■})[a-z]  fail solve
  36     |  3     ([a-z]((■){■}){■})[a-z]   unsatisfiable SAT formula       
  37     |  4     (■)■                    fail dot
  38     |  4     ((■■)■)■                fail dot
  39     |  4     ((■|■)■)■               fail dot
  40     |  4     ((■){■}■)■                unsatisfiable SAT formula       
  41     |  4     (■■)(■■)                fail dot
  42     |  4     (■■)(■|■)               fail dot
  43     |  4     (■■)(■){■}                unsatisfiable SAT formula       
  44     |  4     ■[a-z]                  fail dot
  45     |  4     ((■■))[a-z]             fail dot
  46     |  4     ((■|■))[a-z]            fail dot
  47     |  4     ((■){■})[a-z]             unsatisfiable SAT formula       
  48     |  4     ((■)■)[a-z]             fail dot
  49     |  4     (((■■)■)■)[a-z]         fail dot
  50     |  4     (((■|■)■)■)[a-z]        fail dot
  51     |  4     (((■){■}■)■)[a-z]         unsatisfiable SAT formula       
  52     |  4     ((■■)(■■))[a-z]         fail dot
  53     |  4     ((■■)(■|■))[a-z]        fail dot
  54     |  4     ((■■)(■){■})[a-z]         unsatisfiable SAT formula       
  55     |  4     ((■■|■)■)[a-z]          fail dot
  56     |  4     (((■|■)|■)■)[a-z]       fail dot
  57     |  4     (((■){■}|■)■)[a-z]        unsatisfiable SAT formula       
  58     |  4     ((■|■)(■■))[a-z]        fail dot
  59     |  4     ((■|■)(■|■))[a-z]       fail dot
  60     |  4     ((■|■)(■){■})[a-z]        unsatisfiable SAT formula       
  61     |  4     ((■■){■}■)[a-z]         fail dot
  62     |  4     (((■|■)){■}■)[a-z]      fail solve
  63     |  4     (((■){■}){■}■)[a-z]       unsatisfiable SAT formula       
  64     |  4     ((■){■}(■■))[a-z]         unsatisfiable SAT formula       
  65     |  4     ((■){■}(■|■))[a-z]      fail solve
  66     |  4     ((■){■}(■){■})[a-z]       unsatisfiable SAT formula       
  67     |  4     ((■)[_])■               fail dot
  68     |  4     (((■■)■)[_])■           fail dot
  69     |  4     (((■|■)■)[_])■          fail dot
  70     |  4     (((■){■}■)[_])■         fail dot
  71     |  4     ((■■)[_])(■■)           fail dot
  72     |  4     ((■■)[_])(■|■)          fail dot
  73     |  4     ((■■)[_])(■){■}         fail dot
  74     |  4     ((■■|■)[_])■            fail dot
  75     |  4     (((■|■)|■)[_])■         fail dot
  76     |  4     (((■){■}|■)[_])■        fail dot
  77     |  4     ((■|■)[_])(■■)          fail dot
  78     |  4     ((■|■)[_])(■|■)         fail dot
  79     |  4     ((■|■)[_])(■){■}        fail dot
  80     |  4     ((■■){■}[_])■           fail dot
  81     |  4     (((■|■)){■}[_])■        fail dot
  82     |  4     (((■){■}){■}[_])■       fail dot
  83     |  4     ((■){■}[_])(■■)         fail dot
  84     |  4     ((■){■}[_])(■|■)        fail dot
  85     |  4     ((■){■}[_])(■){■}       get a solution: (([abchl]){1,4}[_])([abdhl]){1,4}
add positive: d_a
get a solution: (([abcdhl]){1,4}[_])([abdhl]){1,4}
add positive: e_a
get a solution: (([abcdehl]){1,4}[_])([abdhl]){1,4}
add positive: f_a
get a solution: (([abcdefhl]){1,4}[_])([abdhl]){1,4}
add positive: g_a
get a solution: (([abcdefghl]){1,4}[_])([abdhl]){1,4}
add positive: i_a
get a solution: (([abcdefghil]){1,4}[_])([abdhl]){1,4}
add positive: a_c
get a solution: (([abcdefghil]){1,4}[_])([abcdhl]){1,4}
add positive: j_a
get a solution: (([abcdefghijl]){1,4}[_])([abcdhl]){1,4}
add positive: k_a
get a solution: (([abcdefghijkl]){1,4}[_])([abcdhl]){1,4}
add positive: a_e
get a solution: (([abcdefghijkl]){1,4}[_])([abcdehl]){1,4}
add positive: a_f
get a solution: (([abcdefghijkl]){1,4}[_])([abcdefhl]){1,4}
add positive: m_a
get a solution: (([abcdefghijklm]){1,4}[_])([abcdefhl]){1,4}
add positive: a_g
get a solution: (([abcdefghijklm]){1,4}[_])([abcdefghl]){1,4}
add positive: a_i
get a solution: (([abcdefghijklm]){1,4}[_])([abcdefghil]){1,4}
add positive: a_j
get a solution: (([abcdefghijklm]){1,4}[_])([abcdefghijl]){1,4}
add positive: n_a
get a solution: (([abcdefghijklmn]){1,4}[_])([abcdefghijl]){1,4}
add positive: o_a
get a solution: (([abcdefghijklmno]){1,4}[_])([abcdefghijl]){1,4}
add positive: a_k
get a solution: (([abcdefghijklmno]){1,4}[_])([abcdefghijkl]){1,4}
add positive: a_m
get a solution: (([abcdefghijklmno]){1,4}[_])([abcdefghijklm]){1,4}
add positive: a_n
get a solution: (([abcdefghijklmno]){1,4}[_])([abcdefghijklmn]){1,4}
add positive: a_o
get a solution: (([abcdefghijklmno]){1,4}[_])([abcdefghijklmno]){1,4}
add positive: a_p
get a solution: (([abcdefghijklmno]){1,4}[_])([abcdefghijklmnop]){1,4}
add positive: a_q
get a solution: (([abcdefghijklmno]){1,4}[_])([abcdefghijklmnopq]){1,4}
add positive: a_r
get a solution: (([abcdefghijklmno]){1,4}[_])([abcdefghijklmnopqr]){1,4}
add positive: a_s
get a solution: (([abcdefghijklmno]){1,4}[_])([abcdefghijklmnopqrs]){1,4}
add positive: p_a
get a solution: (([abcdefghijklmnop]){1,4}[_])([abcdefghijklmnopqrs]){1,4}
add positive: q_a
get a solution: (([abcdefghijklmnopq]){1,4}[_])([abcdefghijklmnopqrs]){1,4}
add positive: r_a
get a solution: (([abcdefghijklmnopqr]){1,4}[_])([abcdefghijklmnopqrs]){1,4}
add positive: a_t
get a solution: (([abcdefghijklmnopqr]){1,4}[_])([abcdefghijklmnopqrst]){1,4}
add positive: s_a
get a solution: (([abcdefghijklmnopqrs]){1,4}[_])([abcdefghijklmnopqrst]){1,4}
add positive: a_u
get a solution: (([abcdefghijklmnopqrs]){1,4}[_])([abcdefghijklmnopqrstu]){1,4}
1.0196647644042969
timeout