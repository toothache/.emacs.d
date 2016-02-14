(custom-set-variables 
 '(display-time-mode t) 
 '(size-indication-mode t) 
 '(tool-bar-mode nil)
 '(truncate-partial-width-windows nil))

;; Display time
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)  ; display date
(fset 'yes-or-no-p 'y-or-n-p)       ; replace yes/no with y/n
(setq backup-inhibited t)           ; no backup
(setq auto-save-default nil)        ; stop creating those #autosave# files

(global-linum-mode t)

;; Show file path 
(setq frame-title-format
'("%S" (buffer-file-name "%f"
(dired-directory dired-directory "%b"))))

;; Show parens without bouncing
(show-paren-mode t)
(setq show-paren-style 'parentheses)

(provide 'init-layout)
