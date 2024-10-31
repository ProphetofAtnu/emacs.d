;; -*- lexical-binding: t; -*-


(defun +load-modus-vivendi ()
  (load-theme 'modus-vivendi t nil))

(set-frame-font "Fira Code 11" nil t)

(add-hook 'emacs-startup-hook
	  #'+load-modus-vivendi)

(provide 'site-theme)
