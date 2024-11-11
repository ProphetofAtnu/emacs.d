;; -*- lexical-binding: t; -*-

(use-package graphql
    :straight t
    :defer t)

(use-package graphql-mode
    :straight t
    :mode 
    ("\\.gql\\'" . graphql-mode)
    ("\\.graphql\\'" . graphql-mode))


(provide 'site-lang-query)
