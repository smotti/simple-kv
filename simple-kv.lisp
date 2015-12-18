;;;; simple-kv.lisp

(in-package #:simple-kv)

(defvar *current-kv-store*)

(defun set-key-value (k v s)
  "Set the value of the key k to v in the kv-store s. Returns the value."
  (setf (gethash k s) v))

(defun get-key-value (k s)
  "Get the value for key k from the kv-store s."
  (gethash k s))

(defun delete-key (k) '())

(defun persist (kv-store path) '())

(defun open-kv-store (path) '())

(defun new-kv-store ()
  (let ((new-store (make-hash-table :test 'equal)))
    (setf *current-kv-store* new-store)))
