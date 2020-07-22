
Given the regular expression:

  (\{\{(.)*\}\})+

That that should match the strings:

  ✓ (0:9)    {{data1}}
  ✓ (9:18)   {{data2}}

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((■\{)(.)*)\})\})+    get a solution: (((({\{)(.)*)\})\})+
add negative: {{}}}
  unsatisfiable SAT formula       
  2      |  1     ((((\{■)(.)*)\})\})+      unsatisfiable SAT formula       
  3      |  1     ((((\{\{)(■)*)\})\})+   get a solution: ((((\{\{)([a12td])*)\})\})+
add positive: {{0}}
add negative: {{}}{{}}
  4      |  1     ((((\{\{)(.){■})\})\})+   unsatisfiable SAT formula       
  5      |  1     ((((\{\{)(.)*)■)\})+      unsatisfiable SAT formula       
  6      |  1     ((((\{\{)(.)*)\})■)+      unsatisfiable SAT formula       
  7      |  1     ((((\{\{)(.)*)\})\}){■}   unsatisfiable SAT formula       
  8      |  2     ((((■■)(.)*)\})\})+       unsatisfiable SAT formula       
  9      |  2     ((((■\{)(■)*)\})\})+      unsatisfiable SAT formula       
  10     |  2     ((((■\{)(.){■})\})\})+    unsatisfiable SAT formula       
  11     |  2     ((((■\{)(.)*)■)\})+       unsatisfiable SAT formula       
  12     |  2     ((((■\{)(.)*)\})■)+       unsatisfiable SAT formula       
  13     |  2     ((((■\{)(.)*)\})\}){■}    unsatisfiable SAT formula       
  14     |  2     (((((■■)\{)(.)*)\})\})+ fail dot
  15     |  2     (((((■|■)\{)(.)*)\})\})+fail solve
  16     |  2     (((((■){■}\{)(.)*)\})\})+  unsatisfiable SAT formula       
  17     |  2     ((((\{■)(■)*)\})\})+      unsatisfiable SAT formula       
  18     |  2     ((((\{■)(.){■})\})\})+    unsatisfiable SAT formula       
  19     |  2     ((((\{■)(.)*)■)\})+       unsatisfiable SAT formula       
  20     |  2     ((((\{■)(.)*)\})■)+       unsatisfiable SAT formula       
  21     |  2     ((((\{■)(.)*)\})\}){■}    unsatisfiable SAT formula       
  22     |  2     ((((\{(■■))(.)*)\})\})+ get a solution: ((((\{({[d0]))(.)*)\})\})+
add positive: {{}}
add negative: {{0}}}
  23     |  2     ((((\{(■|■))(.)*)\})\})+fail solve
  24     |  2     ((((\{(■){■})(.)*)\})\})+  unsatisfiable SAT formula       
  25     |  2     ((((\{\{)(■){■})\})\})+   unsatisfiable SAT formula       
  26     |  2     ((((\{\{)(■)*)■)\})+      unsatisfiable SAT formula       
  27     |  2     ((((\{\{)(■)*)\})■)+      unsatisfiable SAT formula       
  28     |  2     ((((\{\{)(■)*)\})\}){■} get a solution: ((((\{\{)([a12td0])*)\})\}){1}
add positive: {{3}}
get a solution: ((((\{\{)([a123td0])*)\})\}){1}
add positive: {{4}}
get a solution: ((((\{\{)([a123td40])*)\})\}){1}
add positive: {{5}}
get a solution: ((((\{\{)([a123td450])*)\})\}){1}
add positive: {{6}}
get a solution: ((((\{\{)([a123td4560])*)\})\}){1}
add positive: {{7}}
get a solution: ((((\{\{)([a1234td5670])*)\})\}){1}
add positive: {{8}}
get a solution: ((((\{\{)([ad01234t5678])*)\})\}){1}
add positive: {{9}}
get a solution: ((((\{\{)([ad01234t56789])*)\})\}){1}
add positive: {{A}}
get a solution: ((((\{\{)([Aad01234t56789])*)\})\}){1}
add positive: {{B}}
get a solution: ((((\{\{)([AaBd01234t56789])*)\})\}){1}
add positive: {{C}}
get a solution: ((((\{\{)([AaBCd01234t56789])*)\})\}){1}
add positive: {{D}}
get a solution: ((((\{\{)([AaBCDd01234t56789])*)\})\}){1}
add positive: {{E}}
get a solution: ((((\{\{)([AaBCDdE01234t56789])*)\})\}){1}
add positive: {{F}}
get a solution: ((((\{\{)([AaBCDdEF01234t56789])*)\})\}){1}
add positive: {{G}}
get a solution: ((((\{\{)([AaBCDdEFG01234t56789])*)\})\}){1}
add positive: {{H}}
get a solution: ((((\{\{)([AaBCDdEFGH01234t56789])*)\})\}){1}
add positive: {{I}}
get a solution: ((((\{\{)([AaBCDdEFGHI01234t56789])*)\})\}){1}
add positive: {{J}}
get a solution: ((((\{\{)([AaBCDdEFGHIJ01234t56789])*)\})\}){1}
add positive: {{K}}
get a solution: ((((\{\{)([ad01234t56789ABCDEFGHIJK])*)\})\}){1}
add positive: {{L}}
get a solution: ((((\{\{)([ad01234t56789ABCDEFGHIJKL])*)\})\}){1}
add positive: {{M}}
get a solution: ((((\{\{)([ad01234t56789ABCDEFGHIJKLM])*)\})\}){1}
add positive: {{N}}
get a solution: ((((\{\{)([ad01234t56789ABCDEFGHIJKLMN])*)\})\}){1}
add positive: {{O}}
get a solution: ((((\{\{)([ad01234t56789ABCDEFGHIJKLMNO])*)\})\}){1}
add positive: {{P}}
get a solution: ((((\{\{)([ad01234t56789ABCDEFGHIJKLMNOP])*)\})\}){1}
add positive: {{Q}}
get a solution: ((((\{\{)([ad01234t56789ABCDEFGHIJKLMNOPQ])*)\})\}){1}
add positive: {{R}}
get a solution: ((((\{\{)([ad01234t56789ABCDEFGHIJKLMNOPQR])*)\})\}){1}
add positive: {{S}}
get a solution: ((((\{\{)([ad01234t56789ABCDEFGHIJKLMNOPQRS])*)\})\}){1}
add positive: {{T}}
get a solution: ((((\{\{)([ad01234t56789ABCDEFGHIJKLMNOPQRST])*)\})\}){1}
add positive: {{U}}
get a solution: ((((\{\{)([ad01234t56789ABCDEFGHIJKLMNOPQRSTU])*)\})\}){1}
add positive: {{V}}
get a solution: ((((\{\{)([ad01234t56789ABCDEFGHIJKLMNOPQRSTUV])*)\})\}){1}
add positive: {{W}}
get a solution: ((((\{\{)([ad01234t56789ABCDEFGHIJKLMNOPQRSTUVW])*)\})\}){1}
add positive: {{X}}
get a solution: ((((\{\{)([ad01234t56789ABCDEFGHIJKLMNOPQRSTUVWX])*)\})\}){1}
add positive: {{Y}}
get a solution: ((((\{\{)([ad01234t56789ABCDEFGHIJKLMNOPQRSTUVWXY])*)\})\}){1}
add positive: {{Z}}
get a solution: ((((\{\{)([ad01234t56789ABCDEFGHIJKLMNOPQRSTUVWXYZ])*)\})\}){1}
add positive: {{_}}
get a solution: ((((\{\{)([ad01234t56789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])*)\})\}){1}
add positive: {{b}}
get a solution: ((((\{\{)([abd01234t56789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])*)\})\}){1}
add positive: {{c}}
get a solution: ((((\{\{)([abcd01234t56789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])*)\})\}){1}
add positive: {{e}}
get a solution: ((((\{\{)([abcde01234t56789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])*)\})\}){1}
add positive: {{f}}
get a solution: ((((\{\{)([abcdef01234t56789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])*)\})\}){1}
add positive: {{g}}
get a solution: ((((\{\{)([abcdefg01234t56789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])*)\})\}){1}
add positive: {{h}}
get a solution: ((((\{\{)([abcdefgh01234t56789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])*)\})\}){1}
add positive: {{i}}
get a solution: ((((\{\{)([abcdefghi01234t56789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])*)\})\}){1}
add positive: {{j}}
get a solution: ((((\{\{)([abcdefghijt0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])*)\})\}){1}
add positive: {{k}}
get a solution: ((((\{\{)([abcdefghijkt0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])*)\})\}){1}
add positive: {{l}}
get a solution: ((((\{\{)([abcdefghijklt0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])*)\})\}){1}
add positive: {{m}}
get a solution: ((((\{\{)([abcdefghijklmt0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])*)\})\}){1}
add positive: {{n}}
get a solution: ((((\{\{)([abcdefghijklmnt0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])*)\})\}){1}
add positive: {{o}}
get a solution: ((((\{\{)([abcdefghijklmnot0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])*)\})\}){1}
add positive: {{p}}
get a solution: ((((\{\{)([abcdefghijklmnopt0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])*)\})\}){1}
add positive: {{q}}
get a solution: ((((\{\{)([abcdefghijklmnopqt0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])*)\})\}){1}
add positive: {{r}}
get a solution: ((((\{\{)([abcdefghijklmnopqrt0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])*)\})\}){1}
add positive: {{s}}
get a solution: ((((\{\{)([abcdefghijklmnopqrst0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])*)\})\}){1}
add positive: {{u}}
get a solution: ((((\{\{)([abcdefghijklmnopqrstu0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])*)\})\}){1}
add positive: {{v}}
get a solution: ((((\{\{)([abcdefghijklmnopqrstuv0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])*)\})\}){1}
add positive: {{w}}
get a solution: ((((\{\{)([abcdefghijklmnopqrstuvw0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])*)\})\}){1}
add positive: {{x}}
get a solution: ((((\{\{)([abcdefghijklmnopqrstuvwx0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])*)\})\}){1}
add positive: {{y}}
get a solution: ((((\{\{)([abcdefghijklmnopqrstuvwxy0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])*)\})\}){1}
add positive: {{z}}
get a solution: ((((\{\{)([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])*)\})\}){1}
  ((((\{\{)([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])*)\})\}){1}
template: ((((\{■)(■)*)\})\})+ size: 5 holes: 2 time: 0.638225ms
template: ((((\{■)(.)*)\})\})+ size: 6 holes: 1 time: 0.701793ms
template: ((((\{■)(.){■})\})\})+ size: 6 holes: 3 time: 1.012759ms
template: ((((\{\{)(.)*)■)\})+ size: 6 holes: 1 time: 0.696324ms
template: ((((\{\{)(■)*)■)\})+ size: 5 holes: 2 time: 0.573763ms
template: ((((\{\{)(■)*)\})\})+ size: 6 holes: 1 time: 1.228953ms
template: ((((\{\{)(.){■})\})\})+ size: 7 holes: 2 time: 0.663945ms
template: ((((\{\{)(■)*)\})■)+ size: 5 holes: 2 time: 0.559446ms
template: ((((■\{)(.){■})\})\})+ size: 6 holes: 3 time: 0.932509ms
template: ((((■\{)(.)*)\})\})+ size: 6 holes: 1 time: 0.564632ms
template: ((((\{\{)(■)*)\})\}){■} size: 6 holes: 3 time: 1.698814ms
template: (((((■){■}\{)(.)*)\})\})+ size: 7 holes: 3 time: 1.054277ms
template: ((((\{\{)(.)*)\})■)+ size: 6 holes: 1 time: 0.676837ms
template: ((((\{(■){■})(.)*)\})\})+ size: 7 holes: 3 time: 0.927362ms
template: ((((\{\{)(.)*)\})\}){■} size: 7 holes: 2 time: 0.72672ms
template: ((((\{(■■))(.)*)\})\})+ size: 6 holes: 2 time: 0.752013ms
template: ((((\{\{)(■){■})\})\})+ size: 6 holes: 3 time: 0.74669ms
template: ((((■\{)(.)*)\})\}){■} size: 6 holes: 3 time: 0.585046ms
template: ((((■■)(.)*)\})\})+ size: 5 holes: 2 time: 0.570466ms
template: ((((■\{)(■)*)\})\})+ size: 5 holes: 2 time: 0.73141ms
template: ((((\{■)(.)*)■)\})+ size: 5 holes: 2 time: 0.562769ms
template: ((((\{■)(.)*)\})\}){■} size: 6 holes: 3 time: 0.616678ms
template: ((((\{■)(.)*)\})■)+ size: 5 holes: 2 time: 0.824996ms
template: ((((■\{)(.)*)■)\})+ size: 5 holes: 2 time: 0.563136ms
template: ((((■\{)(.)*)\})■)+ size: 5 holes: 2 time: 0.460437ms
longest: #mn#((((\{\{)(■)*)\})\}){■}#mn# size: #ms#6#ms# holes: #mh#3#mh# time: #mt#1.698814#mt#ms

Computed in:

  #c#907#c#ms

timeSATSolver time:

  #s#95#s#ms

cost:

  #d#2#d#

Finds the following solutions (and the corresponding fitness):

  63   ((((\{\{)([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])*)\})\}){1}

All done

last template: #t#((((\{\{)(■)*)\})\}){■}#t#
#num#28#num#
#dep#2#dep#
#t1#2#t1#
#t2#1#t2#
#t3#0#t3#
#p#59#p#
#n#3#n#
solution is #sol#((((\{\{)([abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_])*)\})\}){1}#sol#
before exit

1.2435410022735596
success