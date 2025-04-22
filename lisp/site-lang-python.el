;; -*- lexical-binding: t; -*-

(require 'site-lsp)

(use-package lsp-mode
    :hook ((python-mode python-ts-mode) . lsp))

(use-package lsp-pyright
    :straight t
    :after (lsp-mode))

(use-package elpy
    :straight t
    :defer t)

(use-package python
    :defer t
    :config
    (if (treesit-language-available-p 'python)
	(add-to-list 'major-mode-remap-alist
		     '(python-mode . python-ts-mode))))

(provide 'site-lang-python)
