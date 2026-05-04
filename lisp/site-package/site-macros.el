;; -*- lexical-binding: t; -*-

(require 'cl-macs)

(cl-defmacro kemap! (&key doc full parent suppress name prefix keymap repeat &rest rest))

(provide 'site-macros)
