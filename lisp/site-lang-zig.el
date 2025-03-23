;; -*- lexical-binding: t; -*-

(use-package zig-mode
    :straight t
    :mode ("\\.\\(zig\\|zon\\)\\'" . zig-mode))

(use-package lsp-mode
    :hook (zig-mode . lsp))

(provide 'site-lang-zig)
