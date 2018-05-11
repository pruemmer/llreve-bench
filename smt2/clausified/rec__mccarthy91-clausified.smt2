(set-info :origin "Horn problem converted to SMT-LIB2 using Eldarica (https://github.com/uuverifiers/eldarica)")
(set-logic HORN)
(declare-fun INV_REC_f__2 (Int Int) Bool)
(declare-fun INV_REC_f__2_PRE (Int) Bool)
(declare-fun INV_REC_f^f (Int Int Int Int) Bool)
(declare-fun INV_REC_f^f_PRE (Int Int) Bool)
(declare-fun INV_REC_f__1 (Int Int) Bool)
(declare-fun INV_REC_f__1_PRE (Int) Bool)
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (and (and (and (and (= (+ 11 B) C) (INV_REC_f__2 C A)) (>= (+ (- 101 B) (- 1)) 0)) (>= (+ (+ D (- 100)) (- 1)) 0)) (= D B)) (INV_REC_f__2_PRE A))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int)) (not (and (and (and (and (and (and (not (= (+ A (- 10)) B)) (INV_REC_f__2 C B)) (= (+ 11 D) E)) (INV_REC_f__2 E C)) (>= (+ (- 101 D) (- 1)) 0)) (>= (+ (+ A (- 100)) (- 1)) 0)) (= A D)))))
(assert (forall ((A Int) (B Int) (C Int))(=> (and (and (and (= (+ 11 B) A) (>= (+ (- 101 B) (- 1)) 0)) (>= (+ (+ C (- 100)) (- 1)) 0)) (= C B)) (INV_REC_f__2_PRE A))))
(assert (forall ((A Int) (B Int)) (not (and (and (and (not (= (+ A (- 10)) (+ B (- 10)))) (not (>= (+ (- 101 B) (- 1)) 0))) (>= (+ (+ A (- 100)) (- 1)) 0)) (= A B)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int))(=> (and (and (and (and (and (= (+ C 11) D) (= (+ 11 E) F)) (INV_REC_f^f D F A B)) (>= (+ (- 101 E) (- 1)) 0)) (not (>= (+ (+ C (- 100)) (- 1)) 0))) (= C E)) (INV_REC_f^f_PRE A B))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int)) (not (and (and (and (and (and (and (and (not (= A B)) (INV_REC_f^f C D A B)) (= (+ E 11) F)) (= (+ 11 G) H)) (INV_REC_f^f F H C D)) (>= (+ (- 101 G) (- 1)) 0)) (not (>= (+ (+ E (- 100)) (- 1)) 0))) (= E G)))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (and (and (and (and (= (+ C 11) A) (= (+ 11 D) B)) (>= (+ (- 101 D) (- 1)) 0)) (not (>= (+ (+ C (- 100)) (- 1)) 0))) (= C D)) (INV_REC_f^f_PRE A B))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (and (and (and (and (= (+ B 11) C) (INV_REC_f__1 C A)) (not (>= (+ (- 101 D) (- 1)) 0))) (not (>= (+ (+ B (- 100)) (- 1)) 0))) (= B D)) (INV_REC_f__1_PRE A))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int)) (not (and (and (and (and (and (and (not (= A (+ B (- 10)))) (INV_REC_f__1 C A)) (= (+ D 11) E)) (INV_REC_f__1 E C)) (not (>= (+ (- 101 B) (- 1)) 0))) (not (>= (+ (+ D (- 100)) (- 1)) 0))) (= D B)))))
(assert (forall ((A Int) (B Int) (C Int))(=> (and (and (and (= (+ B 11) A) (not (>= (+ (- 101 C) (- 1)) 0))) (not (>= (+ (+ B (- 100)) (- 1)) 0))) (= B C)) (INV_REC_f__1_PRE A))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (and (and (and (and (= (+ 11 B) C) (INV_REC_f__2 C A)) (>= (+ (- 101 B) (- 1)) 0)) (>= (+ (+ D (- 100)) (- 1)) 0)) (INV_REC_f^f_PRE D B)) (INV_REC_f__2_PRE A))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int))(=> (and (and (and (and (and (and (= (+ A (- 10)) C) (INV_REC_f__2 E D)) (= (+ 11 B) F)) (INV_REC_f__2 F E)) (>= (+ (- 101 B) (- 1)) 0)) (>= (+ (+ A (- 100)) (- 1)) 0)) (INV_REC_f^f_PRE A B)) (INV_REC_f^f A B C D))))
(assert (forall ((A Int) (B Int) (C Int))(=> (and (and (and (= (+ 11 B) A) (>= (+ (- 101 B) (- 1)) 0)) (>= (+ (+ C (- 100)) (- 1)) 0)) (INV_REC_f^f_PRE C B)) (INV_REC_f__2_PRE A))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (and (and (and (and (= (+ A (- 10)) C) (= (+ B (- 10)) D)) (not (>= (+ (- 101 B) (- 1)) 0))) (>= (+ (+ A (- 100)) (- 1)) 0)) (INV_REC_f^f_PRE A B)) (INV_REC_f^f A B C D))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int))(=> (and (and (and (and (and (= (+ C 11) D) (= (+ 11 E) F)) (INV_REC_f^f D F A B)) (>= (+ (- 101 E) (- 1)) 0)) (not (>= (+ (+ C (- 100)) (- 1)) 0))) (INV_REC_f^f_PRE C E)) (INV_REC_f^f_PRE A B))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int))(=> (and (and (and (and (and (and (INV_REC_f^f E F C D) (= (+ A 11) G)) (= (+ 11 B) H)) (INV_REC_f^f G H E F)) (>= (+ (- 101 B) (- 1)) 0)) (not (>= (+ (+ A (- 100)) (- 1)) 0))) (INV_REC_f^f_PRE A B)) (INV_REC_f^f A B C D))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (and (and (and (and (= (+ C 11) A) (= (+ 11 D) B)) (>= (+ (- 101 D) (- 1)) 0)) (not (>= (+ (+ C (- 100)) (- 1)) 0))) (INV_REC_f^f_PRE C D)) (INV_REC_f^f_PRE A B))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (and (and (and (and (= (+ B 11) C) (INV_REC_f__1 C A)) (not (>= (+ (- 101 D) (- 1)) 0))) (not (>= (+ (+ B (- 100)) (- 1)) 0))) (INV_REC_f^f_PRE B D)) (INV_REC_f__1_PRE A))))
(assert (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int))(=> (and (and (and (and (and (and (= (+ B (- 10)) D) (INV_REC_f__1 E C)) (= (+ A 11) F)) (INV_REC_f__1 F E)) (not (>= (+ (- 101 B) (- 1)) 0))) (not (>= (+ (+ A (- 100)) (- 1)) 0))) (INV_REC_f^f_PRE A B)) (INV_REC_f^f A B C D))))
(assert (forall ((A Int) (B Int) (C Int))(=> (and (and (and (= (+ B 11) A) (not (>= (+ (- 101 C) (- 1)) 0))) (not (>= (+ (+ B (- 100)) (- 1)) 0))) (INV_REC_f^f_PRE B C)) (INV_REC_f__1_PRE A))))
(assert (forall ((A Int) (B Int))(=> (and (and (= (+ A (- 10)) B) (>= (+ (+ A (- 100)) (- 1)) 0)) (INV_REC_f__1_PRE A)) (INV_REC_f__1 A B))))
(assert (forall ((A Int) (B Int))(=> (and (and (= (+ B 11) A) (not (>= (+ (+ B (- 100)) (- 1)) 0))) (INV_REC_f__1_PRE B)) (INV_REC_f__1_PRE A))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (and (and (and (and (INV_REC_f__1 C B) (= (+ A 11) D)) (INV_REC_f__1 D C)) (not (>= (+ (+ A (- 100)) (- 1)) 0))) (INV_REC_f__1_PRE A)) (INV_REC_f__1 A B))))
(assert (forall ((A Int) (B Int) (C Int))(=> (and (and (and (= (+ B 11) C) (INV_REC_f__1 C A)) (not (>= (+ (+ B (- 100)) (- 1)) 0))) (INV_REC_f__1_PRE B)) (INV_REC_f__1_PRE A))))
(assert (forall ((A Int) (B Int))(=> (and (and (= (+ 11 B) A) (>= (+ (- 101 B) (- 1)) 0)) (INV_REC_f__2_PRE B)) (INV_REC_f__2_PRE A))))
(assert (forall ((A Int) (B Int) (C Int) (D Int))(=> (and (and (and (and (INV_REC_f__2 C B) (= (+ 11 A) D)) (INV_REC_f__2 D C)) (>= (+ (- 101 A) (- 1)) 0)) (INV_REC_f__2_PRE A)) (INV_REC_f__2 A B))))
(assert (forall ((A Int) (B Int) (C Int))(=> (and (and (and (= (+ 11 B) C) (INV_REC_f__2 C A)) (>= (+ (- 101 B) (- 1)) 0)) (INV_REC_f__2_PRE B)) (INV_REC_f__2_PRE A))))
(assert (forall ((A Int) (B Int))(=> (and (and (= (+ A (- 10)) B) (not (>= (+ (- 101 A) (- 1)) 0))) (INV_REC_f__2_PRE A)) (INV_REC_f__2 A B))))
(check-sat)