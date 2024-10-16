;; -*- lexical-binding: t; -*-

;; Enforce load order
(require 'site-keyboard)

(defun +gui-setup ()
  (menu-bar-mode -1)
  (toggle-scroll-bar -1)
  (tool-bar-mode -1))

(add-hook 'emacs-startup-hook
	  #'+gui-setup)

(use-package savehist
  :hook (emacs-startup . savehist-mode))

(use-package recentf
  :hook (emacs-startup . recentf-mode))

(use-package autorevert
  :hook (emacs-startup . global-auto-revert-mode))

(use-package projectile
    :straight t
    :hook (emacs-startup . projectile-mode))
    
(use-package yasnippet
    :straight t
    :hook (emacs-startup . yas-global-mode))

(provide 'site-interaction)
