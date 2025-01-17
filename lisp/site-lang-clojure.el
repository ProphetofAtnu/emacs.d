;; -*- lexical-binding: t; -*-

(require 'site-lang-lisp)

(use-package clojure-mode
    :straight t
    :mode
    ("\\.cljs\\'" . clojurescript-mode) ("\\.cljc\\'" . clojurec-mode)
    ("\\.\\(clj\\|cljd\\|dtm\\|edn\\|lpy\\)\\'" . clojure-mode))

(use-package evil-cleverparens
    :straight t
    :hook (clojure-mode . evil-cleverparens-mode))

(use-package cider
    :straight t
    :after (clojure-mode))

(provide 'site-lang-clojure)
