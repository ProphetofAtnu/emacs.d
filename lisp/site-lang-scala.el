;; -*- lexical-binding: t; -*-

(use-package scala-mode
    :straight t
    :mode
    ("\\.\\(scala\\|sbt\\|sc\\|worksheet\\.sc\\)\\'" . scala-mode))

(use-package lsp-metals
    :straight t
    :after 'scala-mode)

(use-package lsp-mode
    :hook ((scala-mode) . lsp))

(provide 'site-lang-scala)
