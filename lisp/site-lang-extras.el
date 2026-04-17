;; -*- lexical-binding: t; -*-

(use-package nft-mode
    :straight t
    :mode ("\\.nft\\'" . nft-mode))

(use-package yaml-mode
    :straight t
    :mode ("\\.\\(yml\\|yaml\\)\\'" . yaml-mode))

(use-package just-mode
    :straight t
    :mode
    ("/\\(?:\\.\\)?[jJ][uU][sS][tT][fF][iI][lL][eE]\\'" . just-mode))
    

(provide 'site-lang-extras)
