;; -*- lexical-binding: t; -*-

(require 'site-capf)

(autoload 'symbol-at-point "thingatpt.el")

(use-package elisp-mode
  :bind
  (:map emacs-lisp-mode-map
	("C-c l" . elisp-enable-lexical-binding)
	("C-c s" . eval-last-sexp)
	("C-c C-c" . eval-defun)
   :map lisp-interaction-mode-map
	("C-c l" . elisp-enable-lexical-binding)
	("C-c s" . eval-last-sexp)
	("C-c C-c" . eval-defun))
  :config
  (require 'thingatpt)
  (defun +elisp-setup ()
    (setq-local evil-lookup-func (lambda ()
				   (describe-symbol
				    (symbol-at-point)))))
  (add-hook 'emacs-lisp-mode-hook #'+elisp-setup))

(use-package ielm
  :bind
  (:map emacs-lisp-mode-map
	("C-c C-i" . ielm)
   :map lisp-interaction-mode-map
	("C-c C-i" . ielm)))

(provide 'site-lang-elisp)
