
Given the regular expression:

  {[0-9]:[0-9]}

That that should match the strings:

  ✓ (0:9)    {999:999}
  ✓ (9:18)   {222:115}

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
Exception in thread "main" java.util.regex.PatternSyntaxException: Illegal repetition
{[0-9]:[0-9]}
	at java.util.regex.Pattern.error(Pattern.java:1955)
	at java.util.regex.Pattern.closure(Pattern.java:3157)
	at java.util.regex.Pattern.sequence(Pattern.java:2134)
	at java.util.regex.Pattern.expr(Pattern.java:1996)
	at java.util.regex.Pattern.compile(Pattern.java:1696)
	at java.util.regex.Pattern.<init>(Pattern.java:1351)
	at java.util.regex.Pattern.compile(Pattern.java:1028)
	at edu.wisc.regfixer.enumerate.Corpus.getMatches(Corpus.java:122)
	at edu.wisc.regfixer.RegFixer.fix(RegFixer.java:76)
	at edu.wisc.regfixer.CLI.handleFix(CLI.java:433)
	at edu.wisc.regfixer.CLI.main(CLI.java:242)

0.41361212730407715
error