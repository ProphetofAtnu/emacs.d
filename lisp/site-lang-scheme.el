;; -*- lexical-binding: t; -*-
(require 'site-lang-lisp)

(use-package geiser
  :straight t
  :hook (scheme-mode . turn-on-geiser-mode))

(use-package geiser-guile
  :straight t
  :after geiser
  :config
  (setf geiser-default-implementation 'guile))

(provide 'site-lang-scheme)
