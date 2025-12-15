;; -*- lexical-binding: t; -*-

(straight-use-package
 `(nft-mode :type nil :local-repo ,(expand-file-name
				    "lisp/site-package/nft-mode/"
				    user-emacs-directory)))

(use-package dash
    :straight t
    :demand t)

(use-package no-littering
    :straight t
    :demand t)

(use-package async
    :straight t
    :demand t)

(use-package request
    :straight t
    :demand t)

(provide 'site-startup)
