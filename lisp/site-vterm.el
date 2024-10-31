;; -*- lexical-binding: t; -*-

(use-package eat
    :straight t
    :defer t
    :bind
    (:map +leader-util-prefix-map
	  ("t" . eat)
	  ("T" . eat-other-window)))
    

(provide 'site-vterm)
