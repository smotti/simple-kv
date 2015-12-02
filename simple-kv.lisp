(defvar *db* '())

(defun set-value (k v)
  (setf (getf *db* k) v))

(defun get-value (k)
  (getf *db* k))
