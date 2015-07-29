;;++++++++++++++++++++++++++++++++++++++++
;; init.el
;;++++++++++++++++++++++++++++++++++++++++
(add-to-list 'load-path "~/.emacs.d/color-theme")
(require 'color-theme)

(load "~/.emacs.d/color-theme/themes/color-theme-tomorrow.el")
(eval-after-load "color-theme"
  '(progn
    (color-theme-tomorrow-night-bright)))

(provide 'init-theme)
