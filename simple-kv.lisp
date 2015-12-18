;;;; simple-kv.lisp

(in-package #:simple-kv)

(defvar *current-kv-store*)

(defun set-key-value (k v)
  (setf (getf *db* k) v))

(defun get-key-value (k)
  (getf *db* k))

(defun delete-key (k) '())

(defun persist (kv-store path) '())

(defun open-kv-store (path) '())

(defun new-kv-store ()
  (let ((new-store (make-hash-table :test 'equal)))
    (setf *current-kv-store* new-store)))
