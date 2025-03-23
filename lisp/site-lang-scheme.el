;; -*- lexical-binding: t; -*-
(require 'site-lang-lisp)

(use-package geiser
  :straight t
  :hook (scheme-mode . turn-on-geiser-mode)
  :general
  (geiser-debug-mode-map
   '(normal motion)
   "," nil
   "," 'geiser-guile-debug-menu)
  :config
  (defun geiser-guile-autoquit-setup ()
    (add-hook 'quit-window-hook #'geiser-guile-debug-quit nil t)
    )
  (add-hook 'geiser-debug-mode-hook #'geiser-guile-autoquit-setup))

(use-package geiser-guile
  :straight t
  :after geiser
  :config
  (setf geiser-default-implementation 'guile))

(provide 'site-lang-scheme)
