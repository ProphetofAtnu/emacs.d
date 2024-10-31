;; -*- lexical-binding: t; -*-

(use-package magit
    :straight t
    :commands magit
    :bind
    (:map +leader-util-prefix-map
	  ("g" . magit)))

(provide 'site-vc)
