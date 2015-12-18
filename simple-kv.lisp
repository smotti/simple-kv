;;;; simple-kv.lisp

(in-package #:simple-kv)

(defvar *current-kv-store*)

(defun set-key-value (key value store)
  "Set the value of the key in the store. Returns the value."
  (setf (gethash k s) v))

(defun get-key-value (key store)
  "Get the value for key from the store."
  (gethash key store))

(defun delete-key (key store)
  "Delete the key from the store."
  (remhash key store))

(defun persist (store path) '())

(defun open-kv-store (path) '())

(defun new-kv-store ()
  (let ((new-store (make-hash-table :test 'equal)))
    (setf *current-kv-store* new-store)))

(defun destroy-kv-store (store)
  "Clears the whole store of its contents."
  (clrhash store)
  (when (eql store *current-kv-store*)
    (setf *current-kv-store* nil)))
