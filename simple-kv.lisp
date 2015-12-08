;;;; simple-kv.lisp

(in-package #:simple-kv)

;;; TODO: Proper project
;;; TODO: Define public interface

(in-package :cl-user)

(defpackage :simple-kv
  (:use :cl))

(in-package :simple-kv)

(defvar *db* '())

(defun set-value (k v)
  (setf (getf *db* k) v))

(defun get-value (k)
  (getf *db* k))

(defun delete-key (k) '())

(defun persist (db) '())

(defun open-db (db-file) '())

(defun new-db () '())
