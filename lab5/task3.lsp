(defun last-element (l)
  (cond ((not (listp l)) nil)
        ((car (last l))))
)

(defun v1 (a b)
  (cond ((and (integerp (car a)) (plusp (car a))) b)
        ((cons (car b) (cdr a)))))

(defun v2 (a)
  (cond ((integerp a) (sqrt a))
        ((listp a) (last-element a))
        (a)))

(defun v5 (a b)
  (setq zipped (mapcar #'list a b))
  (sqrt (reduce (lambda (prev cur)
                  (+ prev (expt (- (second cur)
                                   (first cur))
                                 2)))
                zipped
                :initial-value 0)))

(setq exports-task-3 (list
  (list 1 #'v1 '((1 2 3) (4 5 6)))
  (list 1 #'v1 '((-1 2 3) (4 5 6)))
  (list 1 #'v1 '(() (4 5 6)))

  (list 2 #'v2 '(50))
  (list 2 #'v2 '((50 20 10)))
  (list 2 #'v2 '(str))

  (list 5 #'v5 '((1 2) (-4 -5)))
  (list 5 #'v5 '((1 2 3) (-4 -5 -6)))
  (list 5 #'v5 '((1 2 3 -10) (-4 -5 -6 12)))
))
