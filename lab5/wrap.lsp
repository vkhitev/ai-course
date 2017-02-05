(defun out (&rest args)
  (dolist (arg args)
    (format t "~s " arg)
  )
  (format t "~%")
)

(defun filename (num)
  (concatenate 'string "./output/var" (write-to-string num) ".txt")
)

(defun do-task (task)
  (apply (first task) (second task))
)

(setq lists (getLists))
(setq orders (getOrders))

; Clear files
(loop for i from 0 to 24 do
  (with-open-file (*standard-output*
                  (filename (1+ i))
                  :direction :output
                  :if-exists :supersede
                  :if-does-not-exist :create))
    (out))

; Print tasks 1-2 to files
(loop for i from 0 to 24 do
  (with-open-file (*standard-output*
                  (filename (1+ i))
                  :direction :output
                  :if-exists :append
                  :if-does-not-exist :create)
    (format t "Task 1 - concat heads ~%")
    (format t "============================~%")
    (format t "Input: ~s~%" (nth i lists))
    (format t "Output: ~s~%~%" (apply #'concat-heads (nth i lists)))

    (format t "Task 2 - concat nth ~s~%" (nth i orders))
    (format t "============================~%")
    (format t "Input: ~s~%" (nth i lists))
    (format t "Output: ~s~%~%" (apply #'concat-nth (nth i orders) (nth i lists)))

    (format t "Task 3 - custom function~%")
    (format t "============================~%")))

; Print task 3 to files
(dolist (val exports-task-3)
  (with-open-file (*standard-output*
                  (filename (first val))
                  :direction :output
                  :if-exists :append
                  :if-does-not-exist :create)
    (format t "Input: ~s~%" (second (cdr val)))
    (format t "Output: ~s~%~%" (do-task (cdr val)))))
