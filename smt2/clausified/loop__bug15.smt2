(set-info :origin "Horn problem converted to SMT-LIB2 using Eldarica (https://github.com/uuverifiers/eldarica)")
(set-logic HORN)
(declare-fun INV_MAIN_42 (Int Int) Bool)
(assert (not false))
(assert (not false))
(assert (not false))
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (and (and (= (* (- 1) A) (- 1)) (= (* (- 1) B) (- 1))) (= C D)) (INV_MAIN_42 A B))))
(assert (forall ((A Int) (B Int)) (not (and (and (and (not (= (+ (* 4 (+ A 2)) (* (- 2) (+ (+ 2 B) (+ 2 B)))) 0)) (not (>= (+ (- 10 (+ (+ 2 B) (+ 2 B))) (- 1)) 0))) (not (>= (* (- 2) (+ A 2)) (- 9)))) (INV_MAIN_42 A B)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (and (and (and (and (= (* 2 (+ C 2)) A) (= (+ (+ 2 D) (+ 2 D)) B)) (>= (+ (- 10 (+ (+ 2 D) (+ 2 D))) (- 1)) 0)) (>= (* (- 2) (+ C 2)) (- 9))) (INV_MAIN_42 C D)) (INV_MAIN_42 A B))))
(assert (forall ((A Int) (B Int) (C Int))(=> (and (and (and (= (* 2 (+ C 2)) A) (not (>= (+ (- 10 (+ (+ 2 B) (+ 2 B))) (- 1)) 0))) (>= (* (- 2) (+ C 2)) (- 9))) (INV_MAIN_42 C B)) (INV_MAIN_42 A B))))
(assert (forall ((A Int) (B Int) (C Int))(=> (and (and (and (= (+ (+ 2 C) (+ 2 C)) B) (not (>= (* (- 2) (+ A 2)) (- 9)))) (>= (+ (- 10 (+ (+ 2 C) (+ 2 C))) (- 1)) 0)) (INV_MAIN_42 A C)) (INV_MAIN_42 A B))))
(check-sat)
