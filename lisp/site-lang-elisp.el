;; -*- lexical-binding: t; -*-

(require 'site-capf)
(require 'site-lang-lisp)

(use-package helpful
    :straight t
    :commands (helpful-at-point))

(use-package lisp-extra-font-lock
    :straight t
    :hook (emacs-startup . lisp-extra-font-lock-global-mode))


(use-package elisp-mode
  :bind
  (:map emacs-lisp-mode-map
	("C-c l" . elisp-enable-lexical-binding)
	; ("C-c s" . eval-last-sexp)
	; ("C-c C-c" . eval-defun)
   :map lisp-interaction-mode-map
	("C-c l" . elisp-enable-lexical-binding)
	; ("C-c s" . eval-last-sexp)
	; ("C-c C-c" . eval-defun)
	)
  :config
  (defun +elisp-setup ()
    (setq-local evil-lookup-func #'helpful-at-point))
  (add-hook 'emacs-lisp-mode-hook #'+elisp-setup))

(use-package inspector
    :straight t
    :defer t)

(use-package eros
    :straight t
    :bind
    (:map emacs-lisp-mode-map
	  ("C-c C-c" . eros-eval-defun)
	  ("C-c c" . eros-inspect-last-result)
	  ("C-c s" . eros-eval-last-sexp))
    (:map lisp-interaction-mode-map
	  ("C-c C-c" . eros-eval-defun)
	  ("C-c c" . eros-inspect-last-result)
	  ("C-c s" . eros-eval-last-sexp))
    :hook (emacs-startup . eros-mode))

(use-package macrostep
    :bind
  (:map emacs-lisp-mode-map
	("C-c m" . macrostep-mode)))

(use-package ielm
  :bind
  (:map emacs-lisp-mode-map
	("C-c C-i" . ielm)
   :map lisp-interaction-mode-map
	("C-c C-i" . ielm)))

(provide 'site-lang-elisp)
