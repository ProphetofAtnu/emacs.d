;; -*- lexical-binding: t; -*-

(use-package org
    :defer t
    :general
    (:keymap 'org-mode-map
     :states '(normal motion)
     "zd" 'org-fold-hide-drawer-toggle
     "zD" 'org-fold-hide-drawer-all
     "zA" 'org-fold-show-all)
    )

(provide 'site-org)
