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
    :delight projectile-mode
    :hook (emacs-startup . projectile-mode))
    
(use-package yasnippet
    :straight t
    :delight yas-minor-mode
    :hook (emacs-startup . yas-global-mode))

(use-package elec-pair
    :hook (emacs-startup . electric-pair-mode))

(use-package tablist
    :straight t
    :defer t)

(use-package treemacs
    :straight t
    :commands (treemacs)
    :bind
    (:map +leader-util-prefix-map
	  ("t" . treemacs)))


(provide 'site-interaction)
