;; -*- lexical-binding: t; -*-

(use-package lisp-mode
  :init
  (setf lisp-indent-function #'common-lisp-indent-function)
  :config
  (setq inferior-lisp-program "ros -Q run"))

(use-package evil-cleverparens
    :straight t
    :after (evil)
    ;; :hook ((lisp-mode
    ;; 	    emacs-lisp-mode
    ;; 	    scheme-mode
    ;; 	    lisp-interaction-mode)
    ;; 	   . evil-cleverparens-mode)
    :general
    (:keymaps 'evil-cleverparens-mode-map
	      :states '(visual normal motion operator)
	      "{" nil
	      "}" nil
	      "s" 'evil-avy-goto-char-2))

(use-package zoutline
    :straight t)

;; (use-package lispy
;;     :straight t
;;     :defer t)

(use-package lispyville
    :straight t
    :hook ((lisp-mode emacs-lisp-mode scheme-mode lisp-interaction-mode) .
	   lispyville-mode)
    :config
    (lispyville-set-key-theme '(operators additional slurp/barf-cp additional-wrap
				additional-insert text-objects)))

(use-package paredit
    :straight t)

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
