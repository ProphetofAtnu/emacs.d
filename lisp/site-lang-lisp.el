;; -*- lexical-binding: t; -*-

(use-package lisp-mode
  :init
  (setf lisp-indent-function #'common-lisp-indent-function)
  :config
  (setq inferior-lisp-program "ros -Q run"))

(use-package evil-cleverparens
    :straight t
    :after (evil)
    :hook ((lisp-mode
	    emacs-lisp-mode
	    scheme-mode
	    lisp-interaction-mode)
	   . evil-cleverparens-mode)
    :general
    (:keymaps 'evil-cleverparens-mode-map
	      :states '(visual normal motion operator)
	      "{" nil
	      "}" nil))


(use-package macrostep
    :straight t
    :defer t)

(use-package sly
    :straight t
    :commands (sly)
    :custom
    (sly-mrepl-shortcut (kbd "C-,"))
    :config
    (sly-setup))

(provide 'site-lang-lisp)
