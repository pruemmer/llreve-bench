;; Produced by llreve (commit dc2abeaa50d9197d51fa4223b58154246b164df0)
;; See https://formal.iti.kit.edu/reve and https://github.com/mattulbrich/llreve/
;; (c) 2018 KIT

(set-logic HORN)
(define-fun
   IN_INV
   ((s$1_0 Int)
    (accept$1_0 Int)
    (HEAP$1 (Array Int Int))
    (s$2_0 Int)
    (accept$2_0 Int)
    (HEAP$2 (Array Int Int)))
   Bool
   (and
      (= s$1_0 s$2_0)
      (= accept$1_0 accept$2_0)
      (forall
         ((i Int))
         (= (select HEAP$1 i) (select HEAP$2 i)))))
(define-fun
   OUT_INV
   ((result$1 Int)
    (result$2 Int)
    (HEAP$1 (Array Int Int))
    (HEAP$2 (Array Int Int)))
   Bool
   (and
      (= result$1 result$2)
      (forall
         ((i Int))
         (= (select HEAP$1 i) (select HEAP$2 i)))))
; :annot (INV_MAIN_0 accept$1_0 s.addr.0$1_0 HEAP$1 accept$2_0 s.addr.0$2_0 HEAP$2)
(declare-fun
   INV_MAIN_0
   (Int
    Int
    Int
    Int
    Int
    Int
    Int
    Int)
   Bool)
; :annot (INV_MAIN_1 a.0$1_0 accept$1_0 s.addr.0$1_0 HEAP$1 accept$2_0 i.0$2_0 s.addr.0$2_0 HEAP$2)
(declare-fun
   INV_MAIN_1
   (Int
    Int
    Int
    Int
    Int
    Int
    Int
    Int
    Int
    Int)
   Bool)
(assert
   (forall
      ((s$1_0_old Int)
       (accept$1_0_old Int)
       (HEAP$1_old (Array Int Int))
       (s$2_0_old Int)
       (accept$2_0_old Int)
       (HEAP$2_old (Array Int Int)))
      (=>
         (IN_INV s$1_0_old accept$1_0_old HEAP$1_old s$2_0_old accept$2_0_old HEAP$2_old)
         (let
            ((s$1_0 s$1_0_old))
            (let
               ((accept$1_0 accept$1_0_old)
                (HEAP$1 HEAP$1_old)
                (s.addr.0$1_0 s$1_0)
                (s$2_0 s$2_0_old))
               (let
                  ((accept$2_0 accept$2_0_old)
                   (HEAP$2 HEAP$2_old)
                   (s.addr.0$2_0 s$2_0))
                  (forall
                     ((i1 Int)
                      (i2 Int))
                     (INV_MAIN_0 accept$1_0 s.addr.0$1_0 i1 (select HEAP$1 i1) accept$2_0 s.addr.0$2_0 i2 (select HEAP$2 i2)))))))))
(assert
   (forall
      ((accept$1_0_old Int)
       (s.addr.0$1_0_old Int)
       (HEAP$1_old (Array Int Int))
       (accept$2_0_old Int)
       (s.addr.0$2_0_old Int)
       (HEAP$2_old (Array Int Int)))
      (=>
         (forall
            ((i1_old Int)
             (i2_old Int))
            (INV_MAIN_0 accept$1_0_old s.addr.0$1_0_old i1_old (select HEAP$1_old i1_old) accept$2_0_old s.addr.0$2_0_old i2_old (select HEAP$2_old i2_old)))
         (let
            ((accept$1_0 accept$1_0_old)
             (s.addr.0$1_0 s.addr.0$1_0_old)
             (HEAP$1 HEAP$1_old))
            (let
               ((_$1_0 (select HEAP$1 s.addr.0$1_0)))
               (let
                  ((conv$1_0 _$1_0))
                  (let
                     ((cmp$1_0 (distinct conv$1_0 0)))
                     (=>
                        (not cmp$1_0)
                        (let
                           ((retval.0$1_0 0))
                           (let
                              ((result$1 retval.0$1_0)
                               (HEAP$1_res HEAP$1)
                               (accept$2_0 accept$2_0_old)
                               (s.addr.0$2_0 s.addr.0$2_0_old)
                               (HEAP$2 HEAP$2_old))
                              (let
                                 ((_$2_0 (select HEAP$2 s.addr.0$2_0)))
                                 (let
                                    ((conv$2_0 _$2_0))
                                    (let
                                       ((tobool$2_0 (distinct conv$2_0 0)))
                                       (=>
                                          tobool$2_0
                                          (let
                                             ((i.0$2_0 0))
                                             false)))))))))))))))
(assert
   (forall
      ((accept$1_0_old Int)
       (s.addr.0$1_0_old Int)
       (HEAP$1_old (Array Int Int))
       (accept$2_0_old Int)
       (s.addr.0$2_0_old Int)
       (HEAP$2_old (Array Int Int)))
      (=>
         (forall
            ((i1_old Int)
             (i2_old Int))
            (INV_MAIN_0 accept$1_0_old s.addr.0$1_0_old i1_old (select HEAP$1_old i1_old) accept$2_0_old s.addr.0$2_0_old i2_old (select HEAP$2_old i2_old)))
         (let
            ((accept$1_0 accept$1_0_old)
             (s.addr.0$1_0 s.addr.0$1_0_old)
             (HEAP$1 HEAP$1_old))
            (let
               ((_$1_0 (select HEAP$1 s.addr.0$1_0)))
               (let
                  ((conv$1_0 _$1_0))
                  (let
                     ((cmp$1_0 (distinct conv$1_0 0)))
                     (=>
                        cmp$1_0
                        (let
                           ((a.0$1_0 accept$1_0)
                            (accept$2_0 accept$2_0_old)
                            (s.addr.0$2_0 s.addr.0$2_0_old)
                            (HEAP$2 HEAP$2_old))
                           (let
                              ((_$2_0 (select HEAP$2 s.addr.0$2_0)))
                              (let
                                 ((conv$2_0 _$2_0))
                                 (let
                                    ((tobool$2_0 (distinct conv$2_0 0)))
                                    (=>
                                       (not tobool$2_0)
                                       (let
                                          ((retval.0$2_0 0))
                                          (let
                                             ((result$2 retval.0$2_0)
                                              (HEAP$2_res HEAP$2))
                                             false)))))))))))))))
(assert
   (forall
      ((accept$1_0_old Int)
       (s.addr.0$1_0_old Int)
       (HEAP$1_old (Array Int Int))
       (accept$2_0_old Int)
       (s.addr.0$2_0_old Int)
       (HEAP$2_old (Array Int Int)))
      (=>
         (forall
            ((i1_old Int)
             (i2_old Int))
            (INV_MAIN_0 accept$1_0_old s.addr.0$1_0_old i1_old (select HEAP$1_old i1_old) accept$2_0_old s.addr.0$2_0_old i2_old (select HEAP$2_old i2_old)))
         (let
            ((accept$1_0 accept$1_0_old)
             (s.addr.0$1_0 s.addr.0$1_0_old)
             (HEAP$1 HEAP$1_old))
            (let
               ((_$1_0 (select HEAP$1 s.addr.0$1_0)))
               (let
                  ((conv$1_0 _$1_0))
                  (let
                     ((cmp$1_0 (distinct conv$1_0 0)))
                     (=>
                        (not cmp$1_0)
                        (let
                           ((retval.0$1_0 0))
                           (let
                              ((result$1 retval.0$1_0)
                               (HEAP$1_res HEAP$1)
                               (accept$2_0 accept$2_0_old)
                               (s.addr.0$2_0 s.addr.0$2_0_old)
                               (HEAP$2 HEAP$2_old))
                              (let
                                 ((_$2_0 (select HEAP$2 s.addr.0$2_0)))
                                 (let
                                    ((conv$2_0 _$2_0))
                                    (let
                                       ((tobool$2_0 (distinct conv$2_0 0)))
                                       (=>
                                          (not tobool$2_0)
                                          (let
                                             ((retval.0$2_0 0))
                                             (let
                                                ((result$2 retval.0$2_0)
                                                 (HEAP$2_res HEAP$2))
                                                (OUT_INV result$1 result$2 HEAP$1 HEAP$2)))))))))))))))))
(assert
   (forall
      ((accept$1_0_old Int)
       (s.addr.0$1_0_old Int)
       (HEAP$1_old (Array Int Int))
       (accept$2_0_old Int)
       (s.addr.0$2_0_old Int)
       (HEAP$2_old (Array Int Int)))
      (=>
         (forall
            ((i1_old Int)
             (i2_old Int))
            (INV_MAIN_0 accept$1_0_old s.addr.0$1_0_old i1_old (select HEAP$1_old i1_old) accept$2_0_old s.addr.0$2_0_old i2_old (select HEAP$2_old i2_old)))
         (let
            ((accept$1_0 accept$1_0_old)
             (s.addr.0$1_0 s.addr.0$1_0_old)
             (HEAP$1 HEAP$1_old))
            (let
               ((_$1_0 (select HEAP$1 s.addr.0$1_0)))
               (let
                  ((conv$1_0 _$1_0))
                  (let
                     ((cmp$1_0 (distinct conv$1_0 0)))
                     (=>
                        cmp$1_0
                        (let
                           ((a.0$1_0 accept$1_0)
                            (accept$2_0 accept$2_0_old)
                            (s.addr.0$2_0 s.addr.0$2_0_old)
                            (HEAP$2 HEAP$2_old))
                           (let
                              ((_$2_0 (select HEAP$2 s.addr.0$2_0)))
                              (let
                                 ((conv$2_0 _$2_0))
                                 (let
                                    ((tobool$2_0 (distinct conv$2_0 0)))
                                    (=>
                                       tobool$2_0
                                       (let
                                          ((i.0$2_0 0))
                                          (forall
                                             ((i1 Int)
                                              (i2 Int))
                                             (INV_MAIN_1 a.0$1_0 accept$1_0 s.addr.0$1_0 i1 (select HEAP$1 i1) accept$2_0 i.0$2_0 s.addr.0$2_0 i2 (select HEAP$2 i2)))))))))))))))))
(assert
   (forall
      ((a.0$1_0_old Int)
       (accept$1_0_old Int)
       (s.addr.0$1_0_old Int)
       (HEAP$1_old (Array Int Int))
       (accept$2_0_old Int)
       (i.0$2_0_old Int)
       (s.addr.0$2_0_old Int)
       (HEAP$2_old (Array Int Int)))
      (=>
         (forall
            ((i1_old Int)
             (i2_old Int))
            (INV_MAIN_1 a.0$1_0_old accept$1_0_old s.addr.0$1_0_old i1_old (select HEAP$1_old i1_old) accept$2_0_old i.0$2_0_old s.addr.0$2_0_old i2_old (select HEAP$2_old i2_old)))
         (let
            ((a.0$1_0 a.0$1_0_old)
             (accept$1_0 accept$1_0_old)
             (s.addr.0$1_0 s.addr.0$1_0_old)
             (HEAP$1 HEAP$1_old))
            (let
               ((_$1_1 (select HEAP$1 a.0$1_0)))
               (let
                  ((conv4$1_0 _$1_1))
                  (let
                     ((cmp5$1_0 (distinct conv4$1_0 0)))
                     (=>
                        cmp5$1_0
                        (let
                           ((incdec.ptr$1_0 (+ a.0$1_0 1))
                            (_$1_2 (select HEAP$1 a.0$1_0)))
                           (let
                              ((conv10$1_0 _$1_2)
                               (_$1_3 (select HEAP$1 s.addr.0$1_0)))
                              (let
                                 ((conv11$1_0 _$1_3))
                                 (let
                                    ((cmp12$1_0 (= conv10$1_0 conv11$1_0)))
                                    (=>
                                       cmp12$1_0
                                       (let
                                          ((retval.0$1_0 s.addr.0$1_0))
                                          (let
                                             ((result$1 retval.0$1_0)
                                              (HEAP$1_res HEAP$1)
                                              (accept$2_0 accept$2_0_old)
                                              (i.0$2_0 i.0$2_0_old))
                                             (let
                                                ((s.addr.0$2_0 s.addr.0$2_0_old)
                                                 (HEAP$2 HEAP$2_old)
                                                 (idxprom$2_0 i.0$2_0))
                                                (let
                                                   ((arrayidx$2_0 (+ accept$2_0 idxprom$2_0)))
                                                   (let
                                                      ((_$2_1 (select HEAP$2 arrayidx$2_0)))
                                                      (let
                                                         ((conv3$2_0 _$2_1))
                                                         (let
                                                            ((tobool5$2_0 (distinct conv3$2_0 0)))
                                                            (=>
                                                               (not tobool5$2_0)
                                                               (let
                                                                  ((incdec.ptr$2_0 (+ s.addr.0$2_0 1)))
                                                                  (let
                                                                     ((s.addr.0$2_0 incdec.ptr$2_0))
                                                                     false)))))))))))))))))))))))
(assert
   (forall
      ((a.0$1_0_old Int)
       (accept$1_0_old Int)
       (s.addr.0$1_0_old Int)
       (HEAP$1_old (Array Int Int))
       (accept$2_0_old Int)
       (i.0$2_0_old Int)
       (s.addr.0$2_0_old Int)
       (HEAP$2_old (Array Int Int)))
      (=>
         (forall
            ((i1_old Int)
             (i2_old Int))
            (INV_MAIN_1 a.0$1_0_old accept$1_0_old s.addr.0$1_0_old i1_old (select HEAP$1_old i1_old) accept$2_0_old i.0$2_0_old s.addr.0$2_0_old i2_old (select HEAP$2_old i2_old)))
         (let
            ((a.0$1_0 a.0$1_0_old)
             (accept$1_0 accept$1_0_old)
             (s.addr.0$1_0 s.addr.0$1_0_old)
             (HEAP$1 HEAP$1_old))
            (let
               ((_$1_1 (select HEAP$1 a.0$1_0)))
               (let
                  ((conv4$1_0 _$1_1))
                  (let
                     ((cmp5$1_0 (distinct conv4$1_0 0)))
                     (=>
                        (not cmp5$1_0)
                        (let
                           ((incdec.ptr14$1_0 (+ s.addr.0$1_0 1)))
                           (let
                              ((s.addr.0$1_0 incdec.ptr14$1_0)
                               (accept$2_0 accept$2_0_old)
                               (i.0$2_0 i.0$2_0_old))
                              (let
                                 ((s.addr.0$2_0 s.addr.0$2_0_old)
                                  (HEAP$2 HEAP$2_old)
                                  (idxprom$2_0 i.0$2_0))
                                 (let
                                    ((arrayidx$2_0 (+ accept$2_0 idxprom$2_0)))
                                    (let
                                       ((_$2_1 (select HEAP$2 arrayidx$2_0)))
                                       (let
                                          ((conv3$2_0 _$2_1))
                                          (let
                                             ((tobool5$2_0 (distinct conv3$2_0 0)))
                                             (=>
                                                tobool5$2_0
                                                (let
                                                   ((_$2_2 (select HEAP$2 s.addr.0$2_0)))
                                                   (let
                                                      ((conv7$2_0 _$2_2)
                                                       (idxprom8$2_0 i.0$2_0))
                                                      (let
                                                         ((arrayidx9$2_0 (+ accept$2_0 idxprom8$2_0)))
                                                         (let
                                                            ((_$2_3 (select HEAP$2 arrayidx9$2_0)))
                                                            (let
                                                               ((conv10$2_0 _$2_3))
                                                               (let
                                                                  ((cmp$2_0 (= conv7$2_0 conv10$2_0)))
                                                                  (=>
                                                                     cmp$2_0
                                                                     (let
                                                                        ((retval.0$2_0 s.addr.0$2_0))
                                                                        (let
                                                                           ((result$2 retval.0$2_0)
                                                                            (HEAP$2_res HEAP$2))
                                                                           false)))))))))))))))))))))))))
(assert
   (forall
      ((a.0$1_0_old Int)
       (accept$1_0_old Int)
       (s.addr.0$1_0_old Int)
       (HEAP$1_old (Array Int Int))
       (accept$2_0_old Int)
       (i.0$2_0_old Int)
       (s.addr.0$2_0_old Int)
       (HEAP$2_old (Array Int Int)))
      (=>
         (forall
            ((i1_old Int)
             (i2_old Int))
            (INV_MAIN_1 a.0$1_0_old accept$1_0_old s.addr.0$1_0_old i1_old (select HEAP$1_old i1_old) accept$2_0_old i.0$2_0_old s.addr.0$2_0_old i2_old (select HEAP$2_old i2_old)))
         (let
            ((a.0$1_0 a.0$1_0_old)
             (accept$1_0 accept$1_0_old)
             (s.addr.0$1_0 s.addr.0$1_0_old)
             (HEAP$1 HEAP$1_old))
            (let
               ((_$1_1 (select HEAP$1 a.0$1_0)))
               (let
                  ((conv4$1_0 _$1_1))
                  (let
                     ((cmp5$1_0 (distinct conv4$1_0 0)))
                     (=>
                        cmp5$1_0
                        (let
                           ((incdec.ptr$1_0 (+ a.0$1_0 1))
                            (_$1_2 (select HEAP$1 a.0$1_0)))
                           (let
                              ((conv10$1_0 _$1_2)
                               (_$1_3 (select HEAP$1 s.addr.0$1_0)))
                              (let
                                 ((conv11$1_0 _$1_3))
                                 (let
                                    ((cmp12$1_0 (= conv10$1_0 conv11$1_0)))
                                    (=>
                                       cmp12$1_0
                                       (let
                                          ((retval.0$1_0 s.addr.0$1_0))
                                          (let
                                             ((result$1 retval.0$1_0)
                                              (HEAP$1_res HEAP$1)
                                              (accept$2_0 accept$2_0_old)
                                              (i.0$2_0 i.0$2_0_old))
                                             (let
                                                ((s.addr.0$2_0 s.addr.0$2_0_old)
                                                 (HEAP$2 HEAP$2_old)
                                                 (idxprom$2_0 i.0$2_0))
                                                (let
                                                   ((arrayidx$2_0 (+ accept$2_0 idxprom$2_0)))
                                                   (let
                                                      ((_$2_1 (select HEAP$2 arrayidx$2_0)))
                                                      (let
                                                         ((conv3$2_0 _$2_1))
                                                         (let
                                                            ((tobool5$2_0 (distinct conv3$2_0 0)))
                                                            (=>
                                                               tobool5$2_0
                                                               (let
                                                                  ((_$2_2 (select HEAP$2 s.addr.0$2_0)))
                                                                  (let
                                                                     ((conv7$2_0 _$2_2)
                                                                      (idxprom8$2_0 i.0$2_0))
                                                                     (let
                                                                        ((arrayidx9$2_0 (+ accept$2_0 idxprom8$2_0)))
                                                                        (let
                                                                           ((_$2_3 (select HEAP$2 arrayidx9$2_0)))
                                                                           (let
                                                                              ((conv10$2_0 _$2_3))
                                                                              (let
                                                                                 ((cmp$2_0 (= conv7$2_0 conv10$2_0)))
                                                                                 (=>
                                                                                    cmp$2_0
                                                                                    (let
                                                                                       ((retval.0$2_0 s.addr.0$2_0))
                                                                                       (let
                                                                                          ((result$2 retval.0$2_0)
                                                                                           (HEAP$2_res HEAP$2))
                                                                                          (OUT_INV result$1 result$2 HEAP$1 HEAP$2)))))))))))))))))))))))))))))))
(assert
   (forall
      ((a.0$1_0_old Int)
       (accept$1_0_old Int)
       (s.addr.0$1_0_old Int)
       (HEAP$1_old (Array Int Int))
       (accept$2_0_old Int)
       (i.0$2_0_old Int)
       (s.addr.0$2_0_old Int)
       (HEAP$2_old (Array Int Int)))
      (=>
         (forall
            ((i1_old Int)
             (i2_old Int))
            (INV_MAIN_1 a.0$1_0_old accept$1_0_old s.addr.0$1_0_old i1_old (select HEAP$1_old i1_old) accept$2_0_old i.0$2_0_old s.addr.0$2_0_old i2_old (select HEAP$2_old i2_old)))
         (let
            ((a.0$1_0 a.0$1_0_old)
             (accept$1_0 accept$1_0_old)
             (s.addr.0$1_0 s.addr.0$1_0_old)
             (HEAP$1 HEAP$1_old))
            (let
               ((_$1_1 (select HEAP$1 a.0$1_0)))
               (let
                  ((conv4$1_0 _$1_1))
                  (let
                     ((cmp5$1_0 (distinct conv4$1_0 0)))
                     (=>
                        (not cmp5$1_0)
                        (let
                           ((incdec.ptr14$1_0 (+ s.addr.0$1_0 1)))
                           (let
                              ((s.addr.0$1_0 incdec.ptr14$1_0)
                               (accept$2_0 accept$2_0_old)
                               (i.0$2_0 i.0$2_0_old))
                              (let
                                 ((s.addr.0$2_0 s.addr.0$2_0_old)
                                  (HEAP$2 HEAP$2_old)
                                  (idxprom$2_0 i.0$2_0))
                                 (let
                                    ((arrayidx$2_0 (+ accept$2_0 idxprom$2_0)))
                                    (let
                                       ((_$2_1 (select HEAP$2 arrayidx$2_0)))
                                       (let
                                          ((conv3$2_0 _$2_1))
                                          (let
                                             ((tobool5$2_0 (distinct conv3$2_0 0)))
                                             (=>
                                                (not tobool5$2_0)
                                                (let
                                                   ((incdec.ptr$2_0 (+ s.addr.0$2_0 1)))
                                                   (let
                                                      ((s.addr.0$2_0 incdec.ptr$2_0))
                                                      (forall
                                                         ((i1 Int)
                                                          (i2 Int))
                                                         (INV_MAIN_0 accept$1_0 s.addr.0$1_0 i1 (select HEAP$1 i1) accept$2_0 s.addr.0$2_0 i2 (select HEAP$2 i2)))))))))))))))))))))
(assert
   (forall
      ((a.0$1_0_old Int)
       (accept$1_0_old Int)
       (s.addr.0$1_0_old Int)
       (HEAP$1_old (Array Int Int))
       (accept$2_0_old Int)
       (i.0$2_0_old Int)
       (s.addr.0$2_0_old Int)
       (HEAP$2_old (Array Int Int)))
      (=>
         (forall
            ((i1_old Int)
             (i2_old Int))
            (INV_MAIN_1 a.0$1_0_old accept$1_0_old s.addr.0$1_0_old i1_old (select HEAP$1_old i1_old) accept$2_0_old i.0$2_0_old s.addr.0$2_0_old i2_old (select HEAP$2_old i2_old)))
         (let
            ((a.0$1_0 a.0$1_0_old)
             (accept$1_0 accept$1_0_old)
             (s.addr.0$1_0 s.addr.0$1_0_old)
             (HEAP$1 HEAP$1_old))
            (let
               ((_$1_1 (select HEAP$1 a.0$1_0)))
               (let
                  ((conv4$1_0 _$1_1))
                  (let
                     ((cmp5$1_0 (distinct conv4$1_0 0)))
                     (=>
                        cmp5$1_0
                        (let
                           ((incdec.ptr$1_0 (+ a.0$1_0 1))
                            (_$1_2 (select HEAP$1 a.0$1_0)))
                           (let
                              ((conv10$1_0 _$1_2)
                               (_$1_3 (select HEAP$1 s.addr.0$1_0)))
                              (let
                                 ((conv11$1_0 _$1_3))
                                 (let
                                    ((cmp12$1_0 (= conv10$1_0 conv11$1_0)))
                                    (=>
                                       (not cmp12$1_0)
                                       (let
                                          ((a.0$1_0 incdec.ptr$1_0)
                                           (accept$2_0 accept$2_0_old)
                                           (i.0$2_0 i.0$2_0_old))
                                          (let
                                             ((s.addr.0$2_0 s.addr.0$2_0_old)
                                              (HEAP$2 HEAP$2_old)
                                              (idxprom$2_0 i.0$2_0))
                                             (let
                                                ((arrayidx$2_0 (+ accept$2_0 idxprom$2_0)))
                                                (let
                                                   ((_$2_1 (select HEAP$2 arrayidx$2_0)))
                                                   (let
                                                      ((conv3$2_0 _$2_1))
                                                      (let
                                                         ((tobool5$2_0 (distinct conv3$2_0 0)))
                                                         (=>
                                                            tobool5$2_0
                                                            (let
                                                               ((_$2_2 (select HEAP$2 s.addr.0$2_0)))
                                                               (let
                                                                  ((conv7$2_0 _$2_2)
                                                                   (idxprom8$2_0 i.0$2_0))
                                                                  (let
                                                                     ((arrayidx9$2_0 (+ accept$2_0 idxprom8$2_0)))
                                                                     (let
                                                                        ((_$2_3 (select HEAP$2 arrayidx9$2_0)))
                                                                        (let
                                                                           ((conv10$2_0 _$2_3))
                                                                           (let
                                                                              ((cmp$2_0 (= conv7$2_0 conv10$2_0)))
                                                                              (=>
                                                                                 (not cmp$2_0)
                                                                                 (let
                                                                                    ((inc$2_0 (+ i.0$2_0 1)))
                                                                                    (let
                                                                                       ((i.0$2_0 inc$2_0))
                                                                                       (forall
                                                                                          ((i1 Int)
                                                                                           (i2 Int))
                                                                                          (INV_MAIN_1 a.0$1_0 accept$1_0 s.addr.0$1_0 i1 (select HEAP$1 i1) accept$2_0 i.0$2_0 s.addr.0$2_0 i2 (select HEAP$2 i2))))))))))))))))))))))))))))))))
(assert
   (forall
      ((a.0$1_0_old Int)
       (accept$1_0_old Int)
       (s.addr.0$1_0_old Int)
       (HEAP$1_old (Array Int Int))
       (accept$2_0_old Int)
       (i.0$2_0_old Int)
       (s.addr.0$2_0_old Int)
       (HEAP$2_old (Array Int Int)))
      (=>
         (forall
            ((i1_old Int)
             (i2_old Int))
            (INV_MAIN_1 a.0$1_0_old accept$1_0_old s.addr.0$1_0_old i1_old (select HEAP$1_old i1_old) accept$2_0_old i.0$2_0_old s.addr.0$2_0_old i2_old (select HEAP$2_old i2_old)))
         (let
            ((a.0$1_0 a.0$1_0_old)
             (accept$1_0 accept$1_0_old)
             (s.addr.0$1_0 s.addr.0$1_0_old)
             (HEAP$1 HEAP$1_old))
            (let
               ((_$1_1 (select HEAP$1 a.0$1_0)))
               (let
                  ((conv4$1_0 _$1_1))
                  (let
                     ((cmp5$1_0 (distinct conv4$1_0 0)))
                     (=>
                        cmp5$1_0
                        (let
                           ((incdec.ptr$1_0 (+ a.0$1_0 1))
                            (_$1_2 (select HEAP$1 a.0$1_0)))
                           (let
                              ((conv10$1_0 _$1_2)
                               (_$1_3 (select HEAP$1 s.addr.0$1_0)))
                              (let
                                 ((conv11$1_0 _$1_3))
                                 (let
                                    ((cmp12$1_0 (= conv10$1_0 conv11$1_0)))
                                    (=>
                                       (not cmp12$1_0)
                                       (let
                                          ((a.0$1_0 incdec.ptr$1_0))
                                          (=>
                                             (let
                                                ((accept$2_0 accept$2_0_old)
                                                 (i.0$2_0 i.0$2_0_old))
                                                (let
                                                   ((s.addr.0$2_0 s.addr.0$2_0_old)
                                                    (HEAP$2 HEAP$2_old)
                                                    (idxprom$2_0 i.0$2_0))
                                                   (let
                                                      ((arrayidx$2_0 (+ accept$2_0 idxprom$2_0)))
                                                      (let
                                                         ((_$2_1 (select HEAP$2 arrayidx$2_0)))
                                                         (let
                                                            ((conv3$2_0 _$2_1))
                                                            (let
                                                               ((tobool5$2_0 (distinct conv3$2_0 0)))
                                                               (=>
                                                                  tobool5$2_0
                                                                  (let
                                                                     ((_$2_2 (select HEAP$2 s.addr.0$2_0)))
                                                                     (let
                                                                        ((conv7$2_0 _$2_2)
                                                                         (idxprom8$2_0 i.0$2_0))
                                                                        (let
                                                                           ((arrayidx9$2_0 (+ accept$2_0 idxprom8$2_0)))
                                                                           (let
                                                                              ((_$2_3 (select HEAP$2 arrayidx9$2_0)))
                                                                              (let
                                                                                 ((conv10$2_0 _$2_3))
                                                                                 (let
                                                                                    ((cmp$2_0 (= conv7$2_0 conv10$2_0)))
                                                                                    (=>
                                                                                       (not cmp$2_0)
                                                                                       (let
                                                                                          ((inc$2_0 (+ i.0$2_0 1)))
                                                                                          (let
                                                                                             ((i.0$2_0 inc$2_0))
                                                                                             false))))))))))))))))
                                             (forall
                                                ((i1 Int)
                                                 (i2_old Int))
                                                (INV_MAIN_1 a.0$1_0 accept$1_0 s.addr.0$1_0 i1 (select HEAP$1 i1) accept$2_0_old i.0$2_0_old s.addr.0$2_0_old i2_old (select HEAP$2_old i2_old))))))))))))))))))
(assert
   (forall
      ((a.0$1_0_old Int)
       (accept$1_0_old Int)
       (s.addr.0$1_0_old Int)
       (HEAP$1_old (Array Int Int))
       (accept$2_0_old Int)
       (i.0$2_0_old Int)
       (s.addr.0$2_0_old Int)
       (HEAP$2_old (Array Int Int)))
      (=>
         (forall
            ((i1_old Int)
             (i2_old Int))
            (INV_MAIN_1 a.0$1_0_old accept$1_0_old s.addr.0$1_0_old i1_old (select HEAP$1_old i1_old) accept$2_0_old i.0$2_0_old s.addr.0$2_0_old i2_old (select HEAP$2_old i2_old)))
         (let
            ((accept$2_0 accept$2_0_old)
             (i.0$2_0 i.0$2_0_old))
            (let
               ((s.addr.0$2_0 s.addr.0$2_0_old)
                (HEAP$2 HEAP$2_old)
                (idxprom$2_0 i.0$2_0))
               (let
                  ((arrayidx$2_0 (+ accept$2_0 idxprom$2_0)))
                  (let
                     ((_$2_1 (select HEAP$2 arrayidx$2_0)))
                     (let
                        ((conv3$2_0 _$2_1))
                        (let
                           ((tobool5$2_0 (distinct conv3$2_0 0)))
                           (=>
                              tobool5$2_0
                              (let
                                 ((_$2_2 (select HEAP$2 s.addr.0$2_0)))
                                 (let
                                    ((conv7$2_0 _$2_2)
                                     (idxprom8$2_0 i.0$2_0))
                                    (let
                                       ((arrayidx9$2_0 (+ accept$2_0 idxprom8$2_0)))
                                       (let
                                          ((_$2_3 (select HEAP$2 arrayidx9$2_0)))
                                          (let
                                             ((conv10$2_0 _$2_3))
                                             (let
                                                ((cmp$2_0 (= conv7$2_0 conv10$2_0)))
                                                (=>
                                                   (not cmp$2_0)
                                                   (let
                                                      ((inc$2_0 (+ i.0$2_0 1)))
                                                      (let
                                                         ((i.0$2_0 inc$2_0))
                                                         (=>
                                                            (let
                                                               ((a.0$1_0 a.0$1_0_old)
                                                                (accept$1_0 accept$1_0_old)
                                                                (s.addr.0$1_0 s.addr.0$1_0_old)
                                                                (HEAP$1 HEAP$1_old))
                                                               (let
                                                                  ((_$1_1 (select HEAP$1 a.0$1_0)))
                                                                  (let
                                                                     ((conv4$1_0 _$1_1))
                                                                     (let
                                                                        ((cmp5$1_0 (distinct conv4$1_0 0)))
                                                                        (=>
                                                                           cmp5$1_0
                                                                           (let
                                                                              ((incdec.ptr$1_0 (+ a.0$1_0 1))
                                                                               (_$1_2 (select HEAP$1 a.0$1_0)))
                                                                              (let
                                                                                 ((conv10$1_0 _$1_2)
                                                                                  (_$1_3 (select HEAP$1 s.addr.0$1_0)))
                                                                                 (let
                                                                                    ((conv11$1_0 _$1_3))
                                                                                    (let
                                                                                       ((cmp12$1_0 (= conv10$1_0 conv11$1_0)))
                                                                                       (=>
                                                                                          (not cmp12$1_0)
                                                                                          (let
                                                                                             ((a.0$1_0 incdec.ptr$1_0))
                                                                                             false)))))))))))
                                                            (forall
                                                               ((i1_old Int)
                                                                (i2 Int))
                                                               (INV_MAIN_1 a.0$1_0_old accept$1_0_old s.addr.0$1_0_old i1_old (select HEAP$1_old i1_old) accept$2_0 i.0$2_0 s.addr.0$2_0 i2 (select HEAP$2 i2)))))))))))))))))))))))
(check-sat)
(get-model)
