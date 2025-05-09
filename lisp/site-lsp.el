;; -*- lexical-binding: t; -*-

(use-package lsp-mode
  :straight t
  :init
  (setq lsp-keymap-prefix "C-c l")
  :commands lsp
  :custom ((lsp-headerline-breadcrumb-icons-enable nil))

  :general
  (:keymaps 'lsp-mode
	    :states '(normal motion)
	    :definer 'minor-mode
	    "," nil
	    ", =" 'lsp-format-buffer
	    ", R" 'lsp-rename
	    )
  :config
  (setf lsp-completion-provider :none)
  (add-hook 'lsp-mode-hook
	    (lambda ()
	      (setq-local evil-lookup-func #'lsp-ui-doc-glance))))

(use-package lsp-ui
  :straight t
  :after lsp
  :commands lsp-ui-mode)

(use-package lsp-treemacs
    :straight t
    :after (treemacs))
  
(provide 'site-lsp)
