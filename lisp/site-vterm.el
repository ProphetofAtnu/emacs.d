;; -*- lexical-binding: t; -*-


(use-package eat
    :straight t
    :defer t
    :bind
    (:map +leader-util-prefix-map
	  ("t" . eat)
	  ("T" . eat-other-window)))

(use-package vterm
    :straight t
    :commands (vterm)
    :bind
    (:map +leader-util-prefix-map
	  ("v" . vterm)))
    

(provide 'site-vterm)
