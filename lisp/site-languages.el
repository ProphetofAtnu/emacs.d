;; -*- lexical-binding: t; -*-

(use-package treesit
    :defer t
    :config
    (setf treesit-language-source-alist
	  `((agda "https://github.com/tree-sitter/tree-sitter-agda")
	    (bash "https://github.com/tree-sitter/tree-sitter-bash")
	    (c "https://github.com/tree-sitter/tree-sitter-c")
	    (c-sharp "https://github.com/tree-sitter/tree-sitter-c-sharp")
	    (cpp "https://github.com/tree-sitter/tree-sitter-cpp")
	    (css "https://github.com/tree-sitter/tree-sitter-css")
	    (fluent "https://github.com/tree-sitter/tree-sitter-fluent")
	    (go "https://github.com/tree-sitter/tree-sitter-go")
	    (haskell "https://github.com/tree-sitter/tree-sitter-haskell")
	    (html "https://github.com/tree-sitter/tree-sitter-html")
	    (java "https://github.com/tree-sitter/tree-sitter-java")
	    (javascript "https://github.com/tree-sitter/tree-sitter-javascript")
	    (jsdoc "https://github.com/tree-sitter/tree-sitter-jsdoc")
	    (json "https://github.com/tree-sitter/tree-sitter-json")
	    (julia "https://github.com/tree-sitter/tree-sitter-julia")
	    (ocaml "https://github.com/tree-sitter/tree-sitter-ocaml" nil "grammars/ocaml/src")
	    (ocaml-interface "https://github.com/tree-sitter/tree-sitter-ocaml" nil "grammars/interface/src")
	    (ocaml-type "https://github.com/tree-sitter/tree-sitter-ocaml" nil "grammars/type/src")
	    (php "https://github.com/tree-sitter/tree-sitter-php" nil "php/src")
	    (python "https://github.com/tree-sitter/tree-sitter-python")
	    (ql "https://github.com/tree-sitter/tree-sitter-ql")
	    (regex "https://github.com/tree-sitter/tree-sitter-regex")
	    (ruby "https://github.com/tree-sitter/tree-sitter-ruby")
	    (rust "https://github.com/tree-sitter/tree-sitter-rust")
	    (scala "https://github.com/tree-sitter/tree-sitter-scala")
	    (tsx "https://github.com/tree-sitter/tree-sitter-typescript" nil "tsx/src")
	    (typescript "https://github.com/tree-sitter/tree-sitter-typescript" nil "typescript/src")
	    (verilog "https://github.com/tree-sitter/tree-sitter-verilog.git")
	    )))

(require 'site-lang-elisp)
(require 'site-lang-scheme)
(require 'site-lang-python)
(require 'site-lang-cc)

(provide 'site-languages)
