
Given the regular expression:

  [^\-\s].{8,20}

That that should match the strings:

  ✓ (0:8)    avail...
  ✓ (8:16)   allowed.
  ✓ (16:24)  password

And reject the strings:

  ✗ (24:44)  t no spaces allowed.
  ✗ (44:64)  I'm trying to create
  ✗ (64:85)  for a password field.
  ✗ (85:105) a Regular Expression
  ✗ (105:126) 8 - 20 characters, bu
  ✗ (126:146) The requirements are
  ✗ (146:167) I've tried  to no ava

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

0.49535703659057617
error