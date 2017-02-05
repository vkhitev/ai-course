(defun concat-heads (&rest lists)
  (mapcar #'car lists)
)
