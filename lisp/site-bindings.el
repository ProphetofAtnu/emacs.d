;; -*- lexical-binding: t; -*-

(general-defs
    :keymaps '+leader-file-prefix-map
  "f" #'find-file
  "r" #'recentf
  "s" #'save-buffer
  "s" #'save-some-buffers
  "j" #'dired-jump
  "j" #'dired-jump-other-window

  :keymaps '+leader-buffer-prefix-map
  "k" #'kill-buffer-and-window
  "d" #'kill-current-buffer

  :keymaps '+leader-meta-prefix-map
  "r" #'restart-emacs
  "q" #'save-buffers-kill-emacs
  "p" #'use-package-report
  "a" #'about-emacs

  :keymaps '+leader-file-prefix-map
  "f" #'find-file
  "r" #'recentf
  "s" #'save-buffer
  "S" #'save-some-buffers
  "j" #'dired-jump
  "J" #'dired-jump-other-window

  :keymaps '+leader-util-prefix-map
  "l" #'list-processes

  :keymaps '+leader-search-prefix-map
  "g" #'grep

  :keymaps '+leader-goto-prefix-map
  "l" #'goto-line

  :keymaps '+leader-window-prefix-map
  "o" #'other-window
  "d" #'delete-window
  "a" #'toggle-window-dedicated
  )

(use-package evil
    :general
  (:states '(normal motion)
	   "z p o" #'other-window-prefix
	   "z p t" #'other-tab-prefix
	   "z p f" #'other-frame-prefix
	   ))

(provide 'site-bindings)
