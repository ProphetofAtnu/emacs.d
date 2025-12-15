;; -*- lexical-binding: t; -*-

(use-package nft-mode
    :straight t
    :mode ("\\.nft\\'" . nft-mode))

(use-package yaml-mode
    :straight t
    :mode ("\\.\\(yml\\|yaml\\)\\'" . yaml-mode))

(provide 'site-lang-extras)
