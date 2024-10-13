;; -*- lexical-binding: t; -*-

(use-package lsp-mode
  :straight t
  :init
  (setq lsp-keymap-prefix "C-c l")
  :commands lsp)

(use-package lsp-ui
  :straight t
  :after lsp
  :commands lsp-ui-mode)
  

(provide 'site-lsp)
