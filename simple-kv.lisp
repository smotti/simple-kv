;;; Naive implementation based on alist and/or plist which are both
;;; linear-lookup structures, that means traversing the whole list and
;;; comparing each key until one matches.

(defvar *db* '())

(defun set-value (k v)
  (setf (getf *db* k) v))

(defun get-value (k)
  (getf *db* k))
