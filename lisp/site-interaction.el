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

(use-package posframe
    :straight t)

(use-package autorevert
    :hook (emacs-startup . global-auto-revert-mode))

(use-package rg
    :straight t
    :commands (rg))

(use-package projectile
    :straight t
    :delight projectile-mode
    :hook (emacs-startup . projectile-mode)
    :bind
    (:map
      +leader-project-prefix-map
      ("p" . projectile-commander)
      ("f" . projectile-find-file)
      ("r" . projectile-recentf)
      ("i" . projectile-project-info)))

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
    (:map +leader-prefix-map
	  ("TAB" . treemacs)))

(use-package ialign
    :straight t
    :commands (ialign))

(provide 'site-interaction)
