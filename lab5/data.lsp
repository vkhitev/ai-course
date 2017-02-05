(setq data '(
  ((Y U I)
   (G1 G2 G3)
   (KK LL MM JJJ)
   (2 2 3))

  ((G55 G66 G777)
   (9 (F G) I)
   (N I L T D J (II JJ))
   (3 2 6))

  (((PI) V (H J K))
   (R YU (H KJ KL))
   (U II OO LL PP (3 4 5))
   (1 3 6))

  ((T (U U1 U2) (U4 U6 U8))
   (4 6 (7 8 9))
   (78 89 90 67 45)
   (2 3 4))

  ((9 (() 8 88 888))
   (H (J K L) (UJN))
   (C B (N M I) (T Y U))
   (2 3 3))

  ((T Y D E F (NL KM LM) JL)
   (+ 2 3)
   (* (+ 6 8) (- 70 8))
   (6 2 2))

  ((TYPE PRINT DEL)
   (H (H J O) (UJ N))
   (READ SAVE LOAD TXT)
   (3 2 3))

  ((GOAL FUNCTOR CLAUSE (DATA BASE))
   (2 5 (5 4 6) 8)
   (L (K (K I) U))
   (4 3 2))

  ((DOG (CAT) FOX ())
   (RET GET PUT OUT IN)
   (MOV ADD (MUL DEV))
   (3 4 3))

  ((FIR SED (1 2 3) (5) ())
   (H J U K (L M N) (D E L))
   (4 5 (6 7))
   (4 4 3))

  ((PRIM SD FLAG () (GHG))
   (1 56 98 52)
   (T 2 3 4 Y H)
   (5 3 2))

  ((H G (U J) (T R))
   (2 1 (+ 4 5))
   (TYPE CHAR REAL (H G))
   (3 3 3))

  ((REM FFG HHJ (H) J G D)
   (2 34 56 78 (7 8))
   (UN Y LOOP)
   (4 4 2))

  ((T (HJ (JH KL)) K)
   (67 54 (8 9 0) (4 6))
   (K F G H)
   (2 3 3))

  ((3 (3 4 5 Y U) (T Y))
   (G H (6 7 8) 8 9 0 7 6)
   ((5 T 7 Y H) U)
   (2 3 2))

  ((Z X C S A D F)
   ((R) (30) (3) 23)
   (U I 8 9 6 5 4 3 (1 2 3))
   (5 4 7))

  ((V B N J H)
   ((Y U I) (H J K) (8) 78)
   (DF FG HJ K L (O 0 9))
   (3 4 6))

  ((D F G H J K)
   (1 2 3 4 5 6 (4 5) 4)
   (ER RT TY 5 6 6 5)
   (5 3 2))

  ((H G (2 3) 8 7 (T R))
   (2 1 (+ 4 5))
   (TY PE CH AR RE AL (H G))
   (3 3 3))

  ((RM F G H J (J G D))
   (2 3 4 5 6 (7 8))
   (U N Y L O O P)
   (4 6 2))

  ((T HJ JH K)
   (6 7 5 4 (8 9 0) (4 6))
   (K 2 T F G H)
   (2 6 3))

  ((3 3 4 5 Y U)
   (G (6 8) 8 9 7 6)
   ((5) T () 7 Y H U)
   (2 3 2))

  ((Z 2 A D F)
   ((R) (30) 3 4 23)
   (U I 8 9 6 5 4 3 (1 2 3))
   (5 4 7))

  ((V B N J H)
   (Y U I H (J K) (8) 78)
   (DF F K L (O 0 9))
   (3 4 6))

  ((DF GH JK)
   (1 2 5 6 (4 5) 4)
   (ER RT TY 5 6 6 5)
   (6 6 6))
))

(defun getLists ()
  (map 'list
       (lambda (x)
         (list (nth 0 x)
               (nth 1 x)
               (nth 2 x)))
       data))

(defun getOrders ()
  (map 'list
       (lambda (x)
         (nth 3 x))
       data))
