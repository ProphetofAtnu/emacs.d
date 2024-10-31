;; -*- lexical-binding: t; -*-

(use-package lisp-mode
  :init
  (setf lisp-indent-function #'common-lisp-indent-function))

(use-package evil-cleverparens
    :straight t
    :after (evil)
    :hook ((lisp-mode
	    emacs-lisp-mode
	    scheme-mode
	    lisp-interaction-mode)
	   . evil-cleverparens-mode))

(provide 'site-lang-lisp)
