;;++++++++++++++++++++++++++++++++++++++++
;; init.el
;;++++++++++++++++++++++++++++++++++++++++

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/configurations"))

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(require 'init-theme)
(require 'init-fonts)
(require 'init-layout)
(require 'init-indentation)
(require 'init-dired)
(require 'init-org)
;; (require 'init-yas)
(require 'init-shell)
;; (require 'init-matlab)
(require 'init-ispell)
(require 'init-acomplete)
(require 'init-latex)
(require 'init-shortcuts)
(require 'init-tags)

;; (w32-send-sys-command 61488)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(display-time-mode t)
 '(ispell-program-name "aspell")
 '(menu-bar-mode nil)
 '(org-hide-leading-stars t)
 '(package-selected-packages (quote (auctex csv-mode)))
 '(size-indication-mode t)
 '(t-indication-mode t)
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(truncate-partial-width-windows nil)
 '(w32-lwindow-modifier (quote super) t)
 '(whitespace-style
   (quote
    (tabs spaces trailing lines space-before-tab newline indentation empty space-after-tab space-mark tab-mark newline-mark))))

(server-start)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
