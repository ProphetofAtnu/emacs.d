;; -*- lexical-binding: t; -*-

(use-package doom-modeline
    :straight t
    :hook (emacs-startup . doom-modeline-mode))

(defun +load-modus-vivendi ()
  (load-theme 'modus-vivendi t nil))

(set-frame-font "Fira Code 12" nil t)


(add-hook 'emacs-startup-hook
	  #'+load-modus-vivendi)

(provide 'site-theme)
