;; -*- lexical-binding: t; -*-

;;; File prefix
(use-package recentf :commands recentf)
(use-package files :commands restart-emacs)
(use-package dired
  :commands (dired-jump dired-jump-other-window dired)
  :config
  (keymap-unset dired-mode-map "SPC" t)
  (put 'dired-jump 'repeat-map nil))

(defvar-keymap +leader-file-prefix-map
  :doc "Leader prefix for file commands"
  "f" #'find-file
  "r" #'recentf
  "s" #'save-buffer
  "S" #'save-some-buffers
  "j" #'dired-jump
  "J" #'dired-jump-other-window
  )

;;; Meta prefix
(defvar-keymap +leader-meta-prefix-map
  :doc "Leader prefix for emacs global commands"
  "r" #'restart-emacs
  "q" #'save-buffers-kill-emacs
  )


(use-package ibuffer
  :commands ibuffer)

;;; Buffer prefix
(defvar-keymap +leader-buffer-prefix-map
  :doc "Leader prefix for buffer commands"
  "b" #'switch-to-buffer
  "d" #'kill-current-buffer
  "i" #'ibuffer
  )

;;; Util prefix
(defvar-keymap +leader-util-prefix-map
  :doc "Leader prefix for utility commands"
  "p" #'list-processes)

;;; Search prefix
(defvar-keymap +leader-search-prefix-map
  :doc "Leader prefix for search commands"
  "G" #'grep)

;;; Window prefix
(use-package window
  :commands (other-window
	     delete-window))

(defvar-keymap +leader-window-prefix-map
  :doc "Leader prefix for window commands"
  "o" #'other-window
  "d" #'delete-window)

(defvar-keymap +leader-prefix-map
  :doc "Leader prefix map"
  "SPC" #'execute-extended-command
  "f" `("File" . ,+leader-file-prefix-map)
  "b" `("Buffer". ,+leader-buffer-prefix-map)
  "w" `("Window" . ,+leader-window-prefix-map)
  "q" `("Emacs" . ,+leader-meta-prefix-map)
  "s" `("Search" . ,+leader-search-prefix-map)
  "u" `("Utility" . ,+leader-util-prefix-map)
  "h" `("Help" . ,help-map))

(use-package which-key
  :delight which-key-mode
  :hook (emacs-startup . which-key-mode))

(use-package evil
  :straight t
  :hook (emacs-startup . (lambda () (evil-mode 1)))
  :bind (:map +leader-window-prefix-map
	      ("v" . evil-window-vsplit)
	      ("s" . evil-window-split)
	      ("h" . evil-window-left)
	      ("j" . evil-window-down)
	      ("k" . evil-window-up)
	      ("l" . evil-window-right)

	      ("H" . evil-window-move-far-left)
	      ("J" . evil-window-move-very-bottom)
	      ("K" . evil-window-move-very-top)
	      ("L" . evil-window-move-far-right)
	      )
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
  (evil-define-key 'normal 'global
    (kbd "gcc") #'comment-line)
  (evil-define-key 'visual 'global
    (kbd "gcc") #'comment-dwim))

(use-package repeat
    :hook (emacs-startup . repeat-mode))

(use-package evil-collection
  :straight t
  :init
  (defvar evil-collection-key-blacklist '("SPC"))
  :hook (evil-mode . (lambda ()
		       (require 'evil-collection)
		       (evil-collection-init)))
  :config
  (setf evil-collection-want-unimpaired-p nil)
  (with-eval-after-load "evil-collection-unimpaired"
    (delight 'evil-collection-unimpaired-mode nil "evil-collection-unimpaired")))

(provide 'site-keyboard)
