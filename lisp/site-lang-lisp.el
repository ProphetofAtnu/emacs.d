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

(use-package macrostep
    :straight t
    :defer t)

(display-buffer-record-window 'window (selected-window) (current-buffer))
(provide 'site-lang-lisp)
