;; -*- lexical-binding: t; -*-
(regexp-opt
						   (append nft-grammar-chain-types
							   nft-grammar-chain-named-priorities))
(regexp-opt nft-grammar-match-types '(null symbol))


(defun find-semi-in-line ()
  (save-excursion
    (skip-chars-forward "^;" (pos-eol))
    (point)))

(defvar +test-rx
  (rx
   (seq
    line-start
    (* (syntax whitespace))
     "type"
    (+ (syntax whitespace))
    (group
     (+ (or (syntax word)
	    (syntax symbol))))
    (+ (syntax whitespace))
    "hook"
    (+ (syntax whitespace))
    (group
     (+ (or (syntax word)
	    (syntax symbol))))
    (+ (syntax whitespace))
    "priority"
    (+ (syntax whitespace))
    (group
     (+ (or (syntax word)
	    (syntax symbol))))
    )))

(with-current-buffer (get-buffer "demo.nft")
  (setq-local font-lock-keywords nil)
  (set-syntax-table nft-mode-syntax-table)
  (font-lock-add-keywords nil
			  `(
			    (,(rx
			       (seq
				line-start
				(* whitespace)
				(regexp
				 (eval
				  (regexp-opt (append
					       nft-grammar-commands
					       nft-grammar-meta-words) 'symbols)))))
			      (0 'nft-mode-command-face))

			    ("^\\s-*\\<table\\>" (0 'nft-mode-type-face)
					   (,(regexp-opt nft-grammar-table-families)
					     nil nil (0 'nft-mode-named-value-face)))

			    ("^\\s-*\\<type\\>" (0 'nft-mode-keyword-face)
						(,(regexp-opt nft-grammar-chain-types 'symbols)
						  nil nil (0 'nft-mode-named-value-face))
						("\\<hook\\>" nil nil (0 'nft-mode-keyword-face))
						(,(regexp-opt nft-grammar-hooks 'symbols)
						  nil nil (0 'nft-mode-named-value-face))
						("\\<priority\\>" nil nil (0 'nft-mode-keyword-face)))

			    ("\\(?:^\s-*\\)?\\<policy\\>" (0 'nft-mode-keyword-face)
							  (,(regexp-opt nft-grammar-policies)
							    nil nil (0 'nft-mode-named-value-face)))
			    ("\\(?:^\s-*\\)?\\<comment\\>" (0 'nft-mode-keyword-face)
							   (,(regexp-opt nft-grammar-policies)
							     nil nil (0 'nft-mode-named-value-face)))

			    (,(regexp-opt nft-grammar-entities 'symbols) . 'nft-mode-type-face)
			    (,(regexp-opt nft-grammar-match-types 'symbols) . 'nft-mode-function-face)
			    (,(regexp-opt nft-grammar-rule-statements 'symbols) . 'nft-mode-keyword-face)

			    ;; IPv4 address
			    ("\\<[0-9]\\{1,3\\}\\.[0-9]\\{1,3\\}\\.[0-9]\\{1,3\\}\\.[0-9]\\{1,3\\}\\(?:\\/[0-9]\\{1,2\\}\\)?\\>"
			     . 'nft-mode-literal-face)

			    ;; Bound variables
			    ("\\_<[\\$@]\\(?:\\w\\|\\s_\\)+\\_>" . 'nft-mode-variable-face)


			    (,(regexp-opt
			       nft-grammar-match-types

			       'symbol))

			    (,nft-grammar-match-aspects-regex . 'nft-mode-function-face)
			    ;; ("\\<policy\\>" (0 font-lock-keyword-face)
			    ;;  ("\\<\\(?:accept\\|drop\\)\\>" (find-semi-in-line) nil (0 font-lock-builtin-face)))
			    ;; ("^\\s-*\\<type\\>" (0 font-lock-keyword-face)
			    ;;  ("\\<\\(?:hook\\|priority\\)\\>" (find-semi-in-line) nil (0 font-lock-keyword-face)))
			    )
			  )
  ;; (font-lock-add-keywords nil nft-mode-fontlock-keywords)

  ;; (font-lock-add-keywords nil
  ;; 			  `((,+test-rx (0 font-lock-keyword-face)
  ;; 				       (1 font-lock-builtin-face t)
  ;; 				       (2 font-lock-builtin-face t)
  ;; 				       (3 font-lock-builtin-face t)
  ;; 				       )) )

  (font-lock-update)
  )


(rx
 (seq
  line-start
  (* (syntax whitespace))
  "type"
  (+ (syntax whitespace))
  (group
   (+ (or (syntax word)
	  (syntax symbol))))
  ))
