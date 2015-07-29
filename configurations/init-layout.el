(custom-set-variables 
 '(display-time-mode t) 
 '(org-hide-leading-stars t) 
 '(show-paren-mode t)
 '(size-indication-mode t) 
 '(tool-bar-mode nil)
 '(truncate-partial-width-windows nil))

; 显示时间
(setq display-time-24hr-format t)	; 24 小时格式
(setq display-time-day-and-date t)	; 显示日期
(fset 'yes-or-no-p 'y-or-n-p)		; 将 yes/no 替换为 y/n
(setq backup-inhibited t)	     	; 不产生备份
(setq auto-save-default nil)    	; stop creating those #autosave# files
(global-linum-mode t)	

;; 标题栏显示文件路径
(setq frame-title-format
'("%S" (buffer-file-name "%f"
(dired-directory dired-directory "%b"))))

;; 成对显示括号,但不来回弹跳		
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; make indentation commands use space only (never tab character)
;; (setq-default indent-tabs-mode nil)
(setq c-default-style "linux")

(setq-default c-basic-offset 4
              tab-width 4
              indent-tabs-mode nil)

(require 'cc-mode)
(add-to-list 'c-mode-common-hook
			 (lambda () (setq c-syntactic-indentation nil)))
;; ;; 使用 X 剪贴板
;; (setq x-select-enable-clipboard t)

;; (global-set-key (kbd "C-<left>") 'windmove-left)
;; (global-set-key "\C-c=w" 'global-whitespace-mode)
;; (global-set-key "\C-c=t" 'global-whitespace-toggle-options)

(provide 'init-layout)
