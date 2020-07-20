
Given the regular expression:

  [^\-\s].{8,20}

That that should match the strings:

  ✓ (0:8)    avail...
  ✓ (8:16)   allowed.
  ✓ (16:24)  password

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((((■.){)8),)2)0)}    Exception in thread "main" java.util.regex.PatternSyntaxException: Illegal repetition near index 10
^((((((.*.){)8),)2)0)}$
          ^
	at java.util.regex.Pattern.error(Pattern.java:1955)
	at java.util.regex.Pattern.closure(Pattern.java:3157)
	at java.util.regex.Pattern.group0(Pattern.java:2912)
	at java.util.regex.Pattern.sequence(Pattern.java:2051)
	at java.util.regex.Pattern.expr(Pattern.java:1996)
	at java.util.regex.Pattern.group0(Pattern.java:2905)
	at java.util.regex.Pattern.sequence(Pattern.java:2051)
	at java.util.regex.Pattern.expr(Pattern.java:1996)
	at java.util.regex.Pattern.group0(Pattern.java:2905)
	at java.util.regex.Pattern.sequence(Pattern.java:2051)
	at java.util.regex.Pattern.expr(Pattern.java:1996)
	at java.util.regex.Pattern.group0(Pattern.java:2905)
	at java.util.regex.Pattern.sequence(Pattern.java:2051)
	at java.util.regex.Pattern.expr(Pattern.java:1996)
	at java.util.regex.Pattern.group0(Pattern.java:2905)
	at java.util.regex.Pattern.sequence(Pattern.java:2051)
	at java.util.regex.Pattern.expr(Pattern.java:1996)
	at java.util.regex.Pattern.group0(Pattern.java:2905)
	at java.util.regex.Pattern.sequence(Pattern.java:2051)
	at java.util.regex.Pattern.expr(Pattern.java:1996)
	at java.util.regex.Pattern.compile(Pattern.java:1696)
	at java.util.regex.Pattern.<init>(Pattern.java:1351)
	at java.util.regex.Pattern.compile(Pattern.java:1028)
	at edu.wisc.regfixer.enumerate.Enumerant.toPattern(Enumerant.java:129)
	at edu.wisc.regfixer.enumerate.Corpus.passesDotStarTest(Corpus.java:94)
	at edu.wisc.regfixer.enumerate.Enumerants.resolveTests(Enumerants.java:214)
	at edu.wisc.regfixer.enumerate.Enumerants.next(Enumerants.java:113)
	at edu.wisc.regfixer.RegFixer.fix(RegFixer.java:99)
	at edu.wisc.regfixer.CLI.handleFix(CLI.java:433)
	at edu.wisc.regfixer.CLI.main(CLI.java:242)

0.3652510643005371
error