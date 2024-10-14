;; -*- lexical-binding: t; -*-


(use-package lisp-mode
  :init
  (setf lisp-indent-function #'common-lisp-indent-function))


(provide 'site-lang-lisp)
