;; -*- lexical-binding: t; -*-


(defun +load-modus-vivendi ()
   (load-theme 'modus-vivendi t nil)
  )


(add-hook 'emacs-startup-hook
	  #'+load-modus-vivendi)

(provide 'site-theme)
