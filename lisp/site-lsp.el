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
	    ", l i" 'lsp-ui-imenu
	    ", l d" 'lsp-ui-doc-toggle
	    )
  :config
  (setf lsp-completion-provider :none)
  (setf lsp-enable-imenu t)
  (add-hook 'lsp-mode-hook
	    (lambda ()
	      (setq-local evil-lookup-func #'lsp-ui-doc-glance))))

(use-package lsp-ui
  :straight t
  :commands lsp-ui-mode
  :custom ((lsp-ui-imenu-auto-refresh t))
  )

(use-package lsp-treemacs
    :straight t
    :after 'treemacs
    :general
    (:keymaps 'lsp-mode
	      :states '(normal motion)
	      :definer 'minor-mode
	      ", l e" 'lsp-treemacs-errors-list
	      ", l T" 'lsp-treemacs-sync-mode
	      ", l h" 'lsp-treemacs-call-hierarchy
	      ", l x" 'lsp-treemacs-references
	      )
    )

(provide 'site-lsp)
