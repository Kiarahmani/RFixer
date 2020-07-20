
Given the regular expression:

  \b([bc])*(a){3}([bc])*\b

That that should match the strings:

  ✓ (0:3)    cab
  ✓ (3:11)   caabaaac
  ✓ (11:21)  ababaccccc

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
Exception in thread "main" java.lang.UnsupportedOperationException
	at edu.wisc.regfixer.automata.Automaton.predicateFromMetaChar(Automaton.java:1066)
	at edu.wisc.regfixer.automata.Automaton.charEscapedToAutomaton(Automaton.java:1043)
	at edu.wisc.regfixer.automata.Automaton.nodeToAutomaton(Automaton.java:884)
	at edu.wisc.regfixer.automata.Automaton.concatToAutomaton(Automaton.java:897)
	at edu.wisc.regfixer.automata.Automaton.nodeToAutomaton(Automaton.java:875)
	at edu.wisc.regfixer.automata.Automaton.<init>(Automaton.java:64)
	at edu.wisc.regfixer.RegFixer.fix(RegFixer.java:92)
	at edu.wisc.regfixer.CLI.handleFix(CLI.java:433)
	at edu.wisc.regfixer.CLI.main(CLI.java:242)
0.31980419158935547
error