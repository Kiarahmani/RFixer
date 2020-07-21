
Given the regular expression:

  (([rseVino])+)\.(([\.0-9a-zA-Z])+)

That that should match the strings:


And reject the strings:

  ✗ (0:17)   Version.2.1.4.zip
  ✗ (17:22)  e.axd

Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((■)+\.)([\.0-9a-zA-Z])+get a solution: (([∅])+\.)([\.0-9a-zA-Z])+
add positive: version.zip
  unsatisfiable SAT formula       
  2      |  1     (([rseVino]){■}\.)([\.0-9a-zA-Z])+fail dotstar or empty
  3      |  1     (([rseVino])+■)([\.0-9a-zA-Z])+fail dotstar or empty
  4      |  1     (([rseVino])+\.)(■)+    fail dotstar or empty
  5      |  1     (([rseVino])+\.)([\.0-9a-zA-Z]){■}fail dotstar or empty
  6      |  2     ((■){■}\.)([\.0-9a-zA-Z])+get a solution: (([rsevino]){2,7}\.)([\.0-9a-zA-Z])+
add positive: version .zip
add negative: ee..
get a solution: (([rsevino ]){3,8}\.)([\.0-9a-zA-Z])+
add positive: version.zip
add negative: ver..
get a solution: (([rsevino ]){4,8}\.)([\.0-9a-zA-Z])+
add positive: version.zip
add negative:     ..
get a solution: (([rsevino ]){5,8}\.)([\.0-9a-zA-Z])+
add positive: version.zip
add negative:      ..
get a solution: (([rsevino ]){6,8}\.)([\.0-9a-zA-Z])+
add positive: version.zip
add negative:       ..
get a solution: (([einorsv ]){7,8}\.)([\.0-9a-zA-Z])+
add positive: version.zip
add negative:        ..
  unsatisfiable SAT formula       
  7      |  2     ((■)+■)([\.0-9a-zA-Z])+ get a solution: (([eino\.rsvz ])+[sizno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative: v.
get a solution: (([eino\.rsvz])+[sizno ])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  .
get a solution: (([eino\.rsv ])+[sizno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  .
get a solution: (([eino\.rsv ])+[sizo])([\.0-9a-zA-Z])+
add positive: version	.zip
add negative: v.
get a solution: (([e	ino\.rsvz ])+[s	izno])([\.0-9a-zA-Z])+
add positive: version
.zip
add negative:  .
get a solution: (([e	i
no\.rsvz ])+[	i
zno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative: v.
get a solution: (([e	i
no\.rsvz ])+[s	iz
no])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  .
get a solution: (([e	i
no\.rsvz ])+[s	iz
no])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  .
get a solution: (([e	i
no\.rsvz ])+[s	iz
no])([\.0-9a-zA-Z])+
add positive: version.zip
add negative: v.
get a solution: (([einorsvz 	
\.])+[	iz
n])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  	.
get a solution: (([einorsvz 	
\.])+[siz
no])([\.0-9a-zA-Z])+
add positive: version.zip
add negative: v
.
get a solution: (([einorsv 	
\.])+[sizno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative: v.
get a solution: (([einorsvz 	
\.])+[sizno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  .
get a solution: (([einorsvz 	
\.])+[izno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  .
get a solution: (([einorsvz 	
\.])+[sizno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative: v.
get a solution: (([einorsvz 	
\.])+[sizno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative: v.
get a solution: (([einorsvz 	
\.])+[izno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  .
get a solution: (([einorsvz 	
\.])+[izno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative: v.
get a solution: (([einorsv 	
\.])+[sizo])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  .
get a solution: (([einorsvz 	
\.])+[sizno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  .
get a solution: (([einorsvz 	
\.])+[sizno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative: v.
get a solution: (([einorsv 	
\.])+[sizno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  .
get a solution: (([einorsvz 	
\.])+[sizo])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  .
get a solution: (([einorsvz 	
\.])+[sizno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative:  .
get a solution: (([einorsvz 	
\.])+[sizno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative: v.
get a solution: (([einorsvz 	
\.])+[izno])([\.0-9a-zA-Z])+
add positive: version.zip
add negative: v.
get a solution: (([einorsvz 	
\.])+[sizno])([\.0-9a-zA-Z])+
add positive: version .zip
add negative:  .
get a solution: (([einorsv 	
\. ])+[sizno ])([\.0-9a-zA-Z])+
add positive: version!.zip
add negative: v.
get a solution: (([!einorsvz 	
\. ])+[!sizno ])([\.0-9a-zA-Z])+
add positive: version".zip
add negative: v.
get a solution: ((["einorsvz 	
\. ])+[!"izn ])([\.0-9a-zA-Z])+
add positive: version#.zip
add negative:  .
get a solution: (([!"#einorsvz 	
\. ])+[!"#sizno ])([\.0-9a-zA-Z])+
add positive: version$.zip
add negative: v.

2.0317907333374023
timeout