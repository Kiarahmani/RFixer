
Given the regular expression:

  ([0-9])*(\,)?([asce::[]p])?(([AcCdDhHkKmMnNu]m|m)|dam)([0-9])*

That that should match the strings:

  ✓ (0:4)    1,26
  ✓ (4:9)    100cm

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
Exception in thread "main" java.util.regex.PatternSyntaxException: Unclosed character class near index 61
([0-9])*(\,)?([asce::[]p])?(([AcCdDhHkKmMnNu]m|m)|dam)([0-9])*
                                                             ^
	at java.util.regex.Pattern.error(Pattern.java:1955)
	at java.util.regex.Pattern.clazz(Pattern.java:2548)
	at java.util.regex.Pattern.sequence(Pattern.java:2063)
	at java.util.regex.Pattern.expr(Pattern.java:1996)
	at java.util.regex.Pattern.group0(Pattern.java:2905)
	at java.util.regex.Pattern.sequence(Pattern.java:2051)
	at java.util.regex.Pattern.expr(Pattern.java:1996)
	at java.util.regex.Pattern.compile(Pattern.java:1696)
	at java.util.regex.Pattern.<init>(Pattern.java:1351)
	at java.util.regex.Pattern.compile(Pattern.java:1028)
	at edu.wisc.regfixer.enumerate.Corpus.getMatches(Corpus.java:122)
	at edu.wisc.regfixer.RegFixer.fix(RegFixer.java:76)
	at edu.wisc.regfixer.CLI.handleFix(CLI.java:433)
	at edu.wisc.regfixer.CLI.main(CLI.java:242)

0.31751585006713867
error