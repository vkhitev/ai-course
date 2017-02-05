(defun map (fn data)
  (if (null (car data))
      '()
    (cons (funcall fn (car data)) (map fn (cdr data)))))

(defun reduce (fn acc data)
  (if (null (car data))
      acc
    (reduce fn (funcall fn acc (car data)) (cdr data))))

(defun filter (predicate data)
  (if (null (car data))
      '()
    (if (funcall predicate (car data))
        (cons (car data) (filter predicate (cdr data)))
      (filter predicate (cdr data)))))

(defun v9 (source template)
  (filter (lambda (val)
            (or (not (listp val))
                (null (set-exclusive-or val source))))
          source))

; Usage examples
(print (filter #'plusp '(1 -2 3 -4 5)))
(print (map    #'1+    '(1 2 3 4 5)))
(print (reduce #'* 1   '(1 2 3 4 5)))
