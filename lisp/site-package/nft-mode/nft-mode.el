;; -*- lexical-binding: t; -*-

(require 'cl-lib)
(require 'seq)
(require 'font-lock)

(require 'nft-grammar)

(defvar nft-mode-version "0.0.2")
(defvar nft-mode-indent-width standard-indent)

(defun nft-mode-print-version ()
  (interactive)
  (message "NFT MODE VERSION: %s" nft-mode-version))

(defun nft-mode-indent-function ()
    (let ((expected-indent
	   (save-excursion
	     (back-to-indentation)
	     (* nft-mode-indent-width
		(-
		 (car (syntax-ppss))
		 (if  (looking-at-p "\\s)")
		     1
		   0)
		 )))))
      (if (= expected-indent (current-column))
	  'noindent
	(indent-line-to expected-indent))))

(defvar-keymap nft-mode-map
  :parent prog-mode-map
  "C-c C-v" #'nft-mode-print-version
  "RET" #'newline-and-indent
  "<return>" #'newline-and-indent)

(defface nft-mode-type-face
  '((default
     :inherit font-lock-type-face))
  "Face to use when fontifying nftables entities.")

(defface nft-mode-type-face
  '((default
     :inherit font-lock-type-face))
  "")

(defface nft-mode-function-face
  '((default
     :inherit font-lock-function-name-face))
  "")

(defface nft-mode-literal-face
  '((default
     :inherit font-lock-constant-face))
  "")

(defface nft-mode-keyword-face
  '((default
     :inherit font-lock-keyword-face))
  "")

(defface nft-mode-command-face
  '((default
     :inherit font-lock-preprocessor-face))
  "")

(defface nft-mode-variable-face
  '((default
     :inherit font-lock-variable-name-face))
  "")

(defface nft-mode-named-value-face
  '((default
     :inherit font-lock-builtin-face))
  "")

(defvar nft-mode-fontlock-keywords
  `(
    (,(rx
       (seq
	line-start
	(* whitespace)
	(regexp
	 (eval
	  (regexp-opt (append
		       nft-grammar-commands
		       nft-grammar-meta-words)
		      'symbols)))))
      (0 'nft-mode-command-face))

    ("^\\s-*\\_<table\\_>" (0 'nft-mode-type-face)
			 (,(regexp-opt nft-grammar-table-families 'symbols)
			   nil nil (0 'nft-mode-named-value-face)))

    ("^\\s-*\\_<type\\_>" (0 'nft-mode-keyword-face)
			(,(regexp-opt nft-grammar-chain-types 'symbols)
			  nil nil (0 'nft-mode-named-value-face))
			("\\<hook\\>" nil nil
				      (0 'nft-mode-keyword-face))
			(,(regexp-opt nft-grammar-hooks 'symbols)
			  nil nil (0 'nft-mode-named-value-face))
			("\\<priority\\>" nil nil
					  (0 'nft-mode-keyword-face)))

    ("\\(?:^\s-*\\)?\\_<policy\\_>" (0 'nft-mode-keyword-face)
				  (,(regexp-opt nft-grammar-policies 'symbols)
				    nil nil
				    (0 'nft-mode-named-value-face)))
    ("\\(?:^\s-*\\)?\\_<comment\\_>" (0 'nft-mode-keyword-face)
				   (,(regexp-opt nft-grammar-policies 'symbols)
				     nil nil
				     (0 'nft-mode-named-value-face)))

    (,(regexp-opt nft-grammar-entities 'symbols) . 'nft-mode-type-face)
    (,(regexp-opt nft-grammar-match-types 'symbols)
      . 'nft-mode-function-face)
    (,(regexp-opt nft-grammar-rule-statements 'symbols)
      . 'nft-mode-keyword-face)

    ;; IPv4 address
    ("\\<[0-9]\\{1,3\\}\\.[0-9]\\{1,3\\}\\.[0-9]\\{1,3\\}\\.[0-9]\\{1,3\\}\\(?:\\/[0-9]\\{1,2\\}\\)?\\>"
     . 'nft-mode-literal-face)

    ;; Bound variables
    ("\\_<[\\$@]\\(?:\\w\\|\\s_\\)+\\_>" . 'nft-mode-variable-face)


    (,(regexp-opt
       nft-grammar-match-types
       'symbol))

    (,nft-grammar-match-aspects-regex . 'nft-mode-function-face)))

(defvar nft-mode-syntax-table
  (let ((table (make-syntax-table)))
    (modify-syntax-entry ?# "<" table)
    (modify-syntax-entry ?\n ">" table)

    (modify-syntax-entry ?\{ "(}" table)
    (modify-syntax-entry ?\} "){" table)

    (modify-syntax-entry ?\" "\"" table)

    ;; The only "syntactic fences" in nftables rules are "{}"
    (modify-syntax-entry ?\( "_" table)
    (modify-syntax-entry ?\) "_" table)
    (modify-syntax-entry ?\[ "_" table)
    (modify-syntax-entry ?\] "_" table)

    (modify-syntax-entry ?: "." table) ; map separator
    (modify-syntax-entry ?\; "." table) ; statement separator
    (modify-syntax-entry ?, "." table) ; set separator

    (modify-syntax-entry ?\\ "\\" table)

    (modify-syntax-entry ?_ "_" table)
    (modify-syntax-entry ?/ "_" table)
    (modify-syntax-entry ?@ "_" table)
    (modify-syntax-entry ?$ "_" table)

    (modify-syntax-entry ?- "_" table) ; range
    ;; also concatenates
    (modify-syntax-entry ?. "_" table)

    table))

(define-derived-mode nft-mode prog-mode
  "nftables"
		     "Major mode for writing nftables firewalls."
		     (setq-local font-lock-defaults
				 `((nft-mode-fontlock-keywords)
				   nil nil nil nil))
		     (setq-local indent-line-function
				 #'nft-mode-indent-function))

(provide 'nft-mode)
