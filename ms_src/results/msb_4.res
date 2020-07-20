
Given the regular expression:

  ((\bME\b|\bTR\b)|([0-9]){2})([0-9]){7}

That that should match the strings:

  ✓ (0:9)    ME3456789
  ✓ (9:18)   TR3456789

And reject the strings:


Search through possible transformations:

  Order  |  Cost  Template                  Solution                        
---------|--------------------------------------------------------------------
  1      |  1     ((((■M)E)\b|((\bT)R)\b)|([0-9]){2})([0-9]){7}fail dotstar or empty
  2      |  1     ((((\b■)E)\b|((\bT)R)\b)|([0-9]){2})([0-9]){7}fail dotstar or empty
  3      |  1     ((((\bM)■)\b|((\bT)R)\b)|([0-9]){2})([0-9]){7}fail dotstar or empty
  4      |  1     ((((\bM)E)■|((\bT)R)\b)|([0-9]){2})([0-9]){7}fail dotstar or empty
  5      |  1     ((((\bM)E)\b|((■T)R)\b)|([0-9]){2})([0-9]){7}fail dotstar or empty
  6      |  1     ((((\bM)E)\b|((\b■)R)\b)|([0-9]){2})([0-9]){7}fail dotstar or empty
  7      |  1     ((((\bM)E)\b|((\bT)■)\b)|([0-9]){2})([0-9]){7}fail dotstar or empty
  8      |  1     ((((\bM)E)\b|((\bT)R)■)|([0-9]){2})([0-9]){7}fail dotstar or empty
  9      |  1     ((((\bM)E)\b|((\bT)R)\b)|(■){2})([0-9]){7}Exception in thread "main" java.lang.UnsupportedOperationException
	at edu.wisc.regfixer.automata.Automaton.predicateFromMetaChar(Automaton.java:1066)
	at edu.wisc.regfixer.automata.Automaton.charEscapedToAutomaton(Automaton.java:1043)
	at edu.wisc.regfixer.automata.Automaton.nodeToAutomaton(Automaton.java:884)
	at edu.wisc.regfixer.automata.Automaton.concatToAutomaton(Automaton.java:897)
	at edu.wisc.regfixer.automata.Automaton.nodeToAutomaton(Automaton.java:875)
	at edu.wisc.regfixer.automata.Automaton.concatToAutomaton(Automaton.java:897)
	at edu.wisc.regfixer.automata.Automaton.nodeToAutomaton(Automaton.java:875)
	at edu.wisc.regfixer.automata.Automaton.concatToAutomaton(Automaton.java:897)
	at edu.wisc.regfixer.automata.Automaton.nodeToAutomaton(Automaton.java:875)
	at edu.wisc.regfixer.automata.Automaton.unionToAutomaton(Automaton.java:904)
	at edu.wisc.regfixer.automata.Automaton.nodeToAutomaton(Automaton.java:876)
	at edu.wisc.regfixer.automata.Automaton.unionToAutomaton(Automaton.java:904)
	at edu.wisc.regfixer.automata.Automaton.nodeToAutomaton(Automaton.java:876)
	at edu.wisc.regfixer.automata.Automaton.concatToAutomaton(Automaton.java:897)
	at edu.wisc.regfixer.automata.Automaton.nodeToAutomaton(Automaton.java:875)
	at edu.wisc.regfixer.automata.Automaton.<init>(Automaton.java:64)
	at edu.wisc.regfixer.enumerate.Enumerant.synthesize(Enumerant.java:302)
	at edu.wisc.regfixer.RegFixer.synthesisLoop(RegFixer.java:373)
	at edu.wisc.regfixer.RegFixer.fix(RegFixer.java:169)
	at edu.wisc.regfixer.CLI.handleFix(CLI.java:433)
	at edu.wisc.regfixer.CLI.main(CLI.java:242)

0.39630985260009766
error