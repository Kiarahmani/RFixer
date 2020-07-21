
Given the regular expression:

  >>> re.match( '"((\d)+)"|\'((\d)+)\'', "'123'" ).groups() (None, '123')

That that should match the strings:

  ✓ (0:6)    groups

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
Exception in thread "main" java.lang.NullPointerException
	at edu.wisc.regfixer.parser.ConcatNode.toBinary(ConcatNode.java:64)
	at edu.wisc.regfixer.enumerate.Expander.addOriginal(Expander.java:131)
	at edu.wisc.regfixer.enumerate.Expander.add(Expander.java:104)
	at edu.wisc.regfixer.enumerate.Enumerants.first(Enumerants.java:96)
	at edu.wisc.regfixer.enumerate.Enumerants.<init>(Enumerants.java:26)
	at edu.wisc.regfixer.RegFixer.fix(RegFixer.java:73)
	at edu.wisc.regfixer.CLI.handleFix(CLI.java:433)
	at edu.wisc.regfixer.CLI.main(CLI.java:242)

0.4717280864715576
error