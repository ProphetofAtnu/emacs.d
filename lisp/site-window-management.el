;; -*- lexical-binding: t; -*-

(defvar +window-management-setup-functions nil)

(defun +popup-body-quit-fix (window)
  (print (window-buffer window))
  (print (window-parameters window)))

(defvar +popup-window-alist
    '((display-buffer-reuse-window
       display-buffer-reuse-mode-window
       display-buffer-at-bottom)
      (window-height . 15)
      ;; (body-function . +popup-body-quit-fix)
      (mode . (help-mode helpful-mode))
      (category . popup)))


(defun +rebuild-window-display-alist ()
  (setf display-buffer-alist nil)
  (run-hooks '+window-management-setup-functions))


(defmacro make-popup-rule! (name buffer-match)
  `(progn
     (defun ,name ()
       (add-to-list 'display-buffer-alist
		    (cons ,buffer-match
		      (symbol-value '+popup-window-alist))))
     (add-hook '+window-management-setup-functions
	       (function ,name))
     ))

(make-popup-rule! +popup-helpful-rule "\\*helpful")
(make-popup-rule! +popup-help-rule "\\*Help\\*")
(make-popup-rule! +popup-apropos-rule "\\*Apropos\\*")
(make-popup-rule! +popup-category-rule '(category . popup)) ;

(add-hook 'emacs-startup-hook #'+rebuild-window-display-alist)

(setopt display-buffer-base-action
	'((display-buffer-reuse-window display-buffer-reuse-mode-window display-buffer-in-previous-window display-buffer-pop-up-window display-buffer-use-some-window) . nil))

(setopt
 split-width-threshold 80
 split-height-threshold nil)

(provide 'site-window-management)
