(set-info :smt-lib-version 2.6)
(set-logic QF_NIA)
(set-info :source "|
Generated by a testsuite for polynomials of the Ultimate framework [1].
This testsuite runs transformations on polynomials and uses an SMT solver
to check that the input and the output are logically equivalent.
These transformations are mainly used by the quantifier elimination 
implemented in Ultimate Eliminator [2] which itself is used by 
the software verifier Ultimate Automizer[3,4,5] to generate state 
assertions from unsatisfiable cores [6].

2020-06-14, Matthias Heizmann (heizmann@informatik.uni-freiburg.de)

[1] https://ultimate.informatik.uni-freiburg.de/
[2] https://ultimate.informatik.uni-freiburg.de/eliminator/
[3] https://ultimate.informatik.uni-freiburg.de/automizer/
[4] Matthias Heizmann, Yu-Fang Chen, Daniel Dietsch, Marius Greitschus,
     Jochen Hoenicke, Yong Li, Alexander Nutz, Betim Musa, Christian
     Schilling, Tanja Schindler, Andreas Podelski: Ultimate Automizer
     and the Search for Perfect Interpolants - (Competition Contribution).
     TACAS (2) 2018: 447-451
[5] Matthias Heizmann, Jochen Hoenicke, Andreas Podelski: Software Model
     Checking for People Who Love Automata. CAV 2013:36-52
[6] Daniel Dietsch, Matthias Heizmann, Betim Musa, Alexander Nutz, Andreas Podelski
    Craig vs. Newton in software model checking. ESEC/SIGSOFT FSE 2017: 487-497
|")
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status "unknown")
(declare-fun x () Int)
(declare-fun y () Int)
(declare-fun z () Int)
(assert (let ((.cse3 (* z z))) (let ((.cse4 (+ .cse3 3))) (let ((.cse0 (and (= 0 .cse4) (= 0 y))) (.cse2 (and (= 0 (mod .cse4 (* y 6))) (= x (div .cse4 6 y)) (distinct y 0))) (.cse1 (= (* 6 (* y x)) (+ 3 .cse3)))) (and (or .cse0 .cse1 .cse2) (or (not (or .cse0 .cse2)) (not .cse1)))))))
(check-sat)
(exit)
