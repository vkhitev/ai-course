(defun concat-nth (orders &rest lists)
  (setq zipped (mapcar #'list lists orders))
  (reduce (lambda (prev cur)
            (append prev
                    (list (nth (- (second cur) 1)
                          (first cur)))))
          zipped
          :initial-value '()))
