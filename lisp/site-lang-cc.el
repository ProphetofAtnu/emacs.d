;; -*- lexical-binding: t; -*-

(require 'site-lsp)

(use-package lsp-mode
    :hook ((c++-mode . lsp)
	   (c++-ts-mode . lsp)
	   (objc-mode . lsp)
	   (c-mode . lsp)
	   (c-ts-mode . lsp)))

(use-package cc-mode
    :defer t
    :config
    (keymap-unset c++-mode-map "TAB")
    (keymap-unset c-mode-map "TAB")
    (keymap-unset objc-mode-map "TAB")
    )

(provide 'site-lang-cc)
