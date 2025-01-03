;; -*- lexical-binding: t; -*-

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(require 'cl-lib)
(require 'use-package)

;; Packages that should always be available.
(use-package delight :straight t
  :init
  (require 'delight))

(use-package general
    :straight t
    :demand t)

(use-package exec-path-from-shell
    :straight t
    :demand t
    :init
    (exec-path-from-shell-initialize))

(setf use-package-compute-statistics t)

(cl-pushnew (expand-file-name
              "lisp" user-emacs-directory) 
            load-path)

(require 'site-startup)

;; General
(setf visible-bell nil
      inhibit-splash-screen t
      frame-resize-pixelwise t
      window-resize-pixelwise t
      ring-bell-function #'ignore
      sentence-end-double-space nil
      minibuffer-follows-selected-frame nil
      tab-width 4
      tab-bar-show nil
      gc-cons-threshold 100000000
      read-process-output-max (* 1024 1024)
      custom-file (expand-file-name "custom.el" user-emacs-directory))


;; Native comp
(setf
 ;; warning-minimum-level :error
 ;; warning-minimum-loglevel :error
 native-comp-async-query-on-exit t)

;; Backup files
(setf
 create-lockfiles nil
 backup-directory-alist `((".*" . ,temporary-file-directory))
 auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

(setf switch-to-buffer-obey-display-actions t)

(require 'site-keyboard)
(require 'site-interaction)
(require 'site-minibuffer-completion)
(require 'site-org)
(require 'site-vc)
(require 'site-vterm)
(require 'site-languages)
(require 'site-theme)

(load (expand-file-name "custom.el" user-emacs-directory)
      t)

(put 'dired-find-alternate-file 'disabled nil)
