;; -*- lexical-binding: t; -*-

(use-package scala-mode
    :straight t
    :mode
    ("\\.\\(scala\\|sbt\\|sc\\|worksheet\\.sc\\)\\'" . scala-mode))

(use-package scala-ts-mode
    :straight t
    :mode
    ("\\.\\(scala\\|sbt\\|sc\\|worksheet\\.sc\\)\\'" . scala-mode)
    :config
    (if (treesit-language-available-p 'scala)
	(add-to-list 'major-mode-remap-alist
		     '(scala-mode . scala-ts-mode))))

(use-package lsp-metals
    :straight t
    :after 'scala-mode)

(use-package lsp-mode
    :hook ((scala-mode scala-ts-mode) . lsp))

(provide 'site-lang-scala)
