;; -*- lexical-binding: t; -*-


;;; File prefix
(use-package recentf :commands recentf)
(use-package files :commands restart-emacs)

(defvar-keymap +leader-file-prefix-map
  :doc "Leader prefix for file commands"
  "f" #'find-file
  "r" #'recentf
  "s" #'save-some-buffers
  )

;;; Meta prefix
(defvar-keymap +leader-meta-prefix-map
  :doc "Leader prefix for emacs global commands"
  "r" #'restart-emacs
  )


;;; Buffer prefix
(defvar-keymap +leader-buffer-prefix-map
  :doc "Leader prefix for buffer commands"
  "b" #'switch-to-buffer
  "k" #'kill-buffer
  )

;;; Window prefix
(use-package window
  :commands (other-window
	     delete-window))

(defvar-keymap +leader-window-prefix-map
  :doc "Leader prefix for file commands"
  "o" #'other-window
  "d" #'delete-window
  )


(defvar-keymap +leader-prefix-map
  :doc "Leader prefix map"
  "SPC" #'execute-extended-command
  "f" `("File" . ,+leader-file-prefix-map)
  "b" `("Buffer". ,+leader-buffer-prefix-map)
  "w" `("Window" . ,+leader-window-prefix-map)
  "q" `("Emacs" . ,+leader-meta-prefix-map)
  "h" `("Help" . ,help-map))



(use-package which-key
  :hook (emacs-startup . which-key-mode))

(use-package evil
  :straight t
  :hook (emacs-startup . (lambda () (evil-mode 1)))
  :init
  (defvar evil-want-integration t)
  (defvar evil-want-keybinding nil)
  (defvar evil-disable-insert-state-bindings t)
  (defvar evil-want-C-u-scroll t)
  (defvar evil-undo-system 'undo-redo)
  (defvar evil-ex-search-vim-style-regexp t)
  (defvar evil-search-module 'evil-search)
  :config
  (evil-define-key 'normal 'global
    (kbd "<SPC>") +leader-prefix-map)
  )

(use-package evil-collection
  :after evil
  :straight t
  :hook (evil-mode . evil-collection-init))


(provide 'site-keyboard)
