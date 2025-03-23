;; -*- lexical-binding: t; -*-

(use-package lsp-mode
  :straight t
  :init
  (setq lsp-keymap-prefix "C-c l")
  :commands lsp
  :custom ((lsp-headerline-breadcrumb-icons-enable nil))
  :config
  (setf lsp-completion-provider :none))

(use-package lsp-ui
  :straight t
  :after lsp
  :commands lsp-ui-mode)

(use-package lsp-treemacs
    :straight t
    :after (treemacs))
  
(provide 'site-lsp)
