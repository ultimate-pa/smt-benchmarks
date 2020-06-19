(set-info :smt-lib-version 2.6)
(set-logic LIA)
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
(declare-fun eq () Int)
(assert (let ((.cse1 (= (mod (mod (mod x 4) 3) 7) eq)) (.cse0 (exists ((aux_mod_9 Int) (aux_div_9 Int)) (and (= (mod (mod aux_mod_9 3) 7) eq) (< aux_mod_9 4) (<= 0 aux_mod_9) (= x (+ aux_mod_9 (* 4 aux_div_9))))))) (and (or .cse0 .cse1) (or (not .cse1) (not .cse0)))))
(check-sat)
(exit)
