;;;; simple-kv.asd

(asdf:defsystem #:simple-kv
  :description "A simple embbedable in-memory key-value store"
  :author "wottis@gmail.com"
  :license "Unlicense"
  :serial t
  :components ((:file "package")
               (:file "simple-kv")))

