;;; Naive implementation based on alist and/or plist which are both
;;; linear-lookup structures, that means traversing the whole list and
;;; comparing each key until one matches.

(in-package :cl-user)

(defpackage :simple-kv
  (:use :cl :usocket))

(in-package :simple-kv)

(defvar *db* '())

(setf *server-socket*
  (usocket:socket-listen "127.0.0.1" 1234
                         :reuse-address t
                         :element-type 'unsinged-byte))

(defun set-value (k v)
  (setf (getf *db* k) v))

(defun get-value (k)
  (getf *db* k))
