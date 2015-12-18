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

;;; That following doesn't work, instead implement an event/fact based approach. This
;;; means every set/get/delete is appended to a log sequence and on persist
;;; written to disk. OPEN-KV-STORE then replays all of them. Note though that's
;;; nothing for very large stores for that purpose we should write a bunch
;;; of them to disk in intervals.
;;; A hash-table is not a sequence!!
(defun persist (path store)
  "Persit the key-value store at the given path."
  (with-open-file (out path
                       :if-exists :supersede
                       :if-does-not-exist :create
                       :element-type '(unsigned-byte 8))
    (write-sequence store out)))

(defun open-kv-store (path) '())

(defun new-kv-store ()
  "Create a new key-value store and set is the *current-kv-store*. Returns a
   new store (hash-table)."
  (let ((new-store (make-hash-table :test 'equal)))
    (setf *current-kv-store* new-store)))

(defun destroy-kv-store (store)
  "Clears the whole store of its contents."
  (clrhash store)
  (when (eql store *current-kv-store*)
    (setf *current-kv-store* nil)))
