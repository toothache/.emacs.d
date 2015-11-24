
(setenv "PATH" (concat "C:\\Users\\tooth_000\\AppData\\Roaming\\.emacs.d\\plugins\\gnu-tags\\bin;" (getenv "PATH")))

(setq exec-path (append exec-path
'("C:\\Users\\tooth_000\\AppData\\Roaming\\.emacs.d\\plugins\\gnu-tags\\bin")))

(add-to-list 'load-path 
	     "~/.emacs.d/plugins/gnu-tags/share/gtags")

(autoload 'gtags-mode "gtags" "" t)

;; (add-hook 'gtags-mode-hook
;;   '(lambda ()
;;         ; Local customization (overwrite key mapping)
;;         (define-key gtags-mode-map "\C-f" 'scroll-up)
;;         (define-key gtags-mode-map "\C-b" 'scroll-down)
;; ))

(add-hook 'gtags-select-mode-hook
  '(lambda ()
        (setq hl-line-face 'underline)
        (hl-line-mode 1)
))

(add-hook 'c++-mode-hook
  '(lambda ()
     (gtags-mode 1)))

(add-hook 'c-mode-hook
  '(lambda ()
        (gtags-mode 1)))

; Customization
(setq gtags-suggested-key-mapping t)
(setq gtags-auto-update t)
;; (setq gtags-global-command "~\\.emacs.d/plugins/gnu-tags/bin/global.exe")

(provide 'init-tags)
