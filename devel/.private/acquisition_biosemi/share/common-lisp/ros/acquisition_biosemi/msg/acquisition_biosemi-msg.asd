
(cl:in-package :asdf)

(defsystem "acquisition_biosemi-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "biosemi_echantillon" :depends-on ("_package_biosemi_echantillon"))
    (:file "_package_biosemi_echantillon" :depends-on ("_package"))
    (:file "biosemi_result" :depends-on ("_package_biosemi_result"))
    (:file "_package_biosemi_result" :depends-on ("_package"))
  ))