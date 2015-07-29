

;; (load "~/emacs.d/theme")
;; (add-to-list 'load-path "~/.emacs.d/themes/")
;; (require 'color-theme)


;; (load "")



;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(ansi-color-names-vector ["white" "red" "green" "yellow" "pale
;;  green" "chocolate" "cyan" "medium sea green"])
;;  '(column-number-mode t)
;;  '(custom-enabled-themes (quote (deeper-blue)))
;;  '(custom-safe-themes (quote ("49207ef736e83cf06824952ea9364316b1b84cc21d61db438b2913cc1c57b6cb"
;; 			      "843a82ff3b91bec5430f9acdd11de03fc0f7874b15c1b6fbb965116b4c7bf830"
;; 			      default))) 
;;  '(display-time-mode t) 
;;  '(ispell-dictionary "en")
;;  '(org-hide-leading-stars t) 
;;  '(show-paren-mode t)
;;  '(size-indication-mode t) 
;;  '(tool-bar-mode nil)
;;  '(truncate-partial-width-windows nil))

;; ;; Setting English Font
;; (set-frame-font "Monaco:pixelsize=18")
;; ;; (set-frame-font "苹果雅黑:pixelsize=14") ;这个字体的14号配文泉驿微米
;; ;; 黑的效果刚好等宽。
;; (dolist (charset '(han kana symbol cjk-misc bopomofo))
;; (set-fontset-font (frame-parameter nil 'font)
;; charset
;; (font-spec :family "文泉驿微米黑" :size 16)))



;;ibuffer
(require 'ibuffer)
(global-set-key [(f4)] 'ibuffer)(display-time-mode 1)


; 显示时间
(setq display-time-24hr-format t)	; 24 小时格式
(setq display-time-day-and-date t)	; 显示日期
(fset 'yes-or-no-p 'y-or-n-p)		; 将 yes/no 替换为 y/n
(column-number-mode t)			; 显示列号
(setq backup-inhibited t)		; 不产生备份
(setq auto-save-default nil)    	; stop creating those #autosave# files

;; 标题栏显示文件路径
(setq frame-title-format
'("%S" (buffer-file-name "%f"
(dired-directory dired-directory "%b"))))

;; 成对显示括号,但不来回弹跳		
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; 使用 X 剪贴板
(setq x-select-enable-clipboard t)

;; dired 相关
(setq dired-recursive-deletes t)	; 可以递归的删除目录
(setq dired-recursive-copies t)	        ; 可以递归的进行拷贝

;; 隐藏无用文件
(require 'dired-x)
(setq-default dired-omit-files-p t)   ; this is buffer-local variable
(setq dired-omit-files
     (concat dired-omit-files "\\|^\\..+$"))

;; 窗口切换
(global-set-key (kbd "s-<left>") 'windmove-left)
(global-set-key (kbd "s-<right>") 'windmove-right)
(global-set-key (kbd "s-<up>") 'windmove-up)
(global-set-key (kbd "s-<down>") 'windmove-down)

;; 跳到某个窗口
(global-set-key (kbd "M-1") 'ecb-goto-window-directories)
(global-set-key (kbd "M-2") 'ecb-goto-window-sources)
(global-set-key (kbd "M-3") 'ecb-goto-window-history)
(global-set-key (kbd "M-4") 'ecb-goto-window-methods)
(global-set-key (kbd "M-5") 'ecb-goto-window-analyse)

;; (global-set-key [f11] 'my-fullscreen)

;; ;全屏
;; (defun my-fullscreen ()
;;   (interactive)
;;   (x-send-client-message
;;    nil 0 nil "_NET_WM_STATE" 32
;;    '(2 "_NET_WM_STATE_FULLSCREEN" 0))
;; )

;最大化
;; (defun my-maximized ()
;;   (interactive)
;;   (x-send-client-message
;;    nil 0 nil "_NET_WM_STATE" 32
;;    '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
;;   (x-send-client-message
;;    nil 0 nil "_NET_WM_STATE" 32
;;    '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
;; )
;; ;启动时最大化
;; (my-maximized)


;; org-mode
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key [f8] 'ispell-region)

(add-hook 'org-mode-hook 'turn-on-auto-fill) 
(add-hook 'org-mode-hook 'turn-on-font-lock)
;; (add-hook 'org-mode-hook 'org-support-shift-select) 

;; (setq org-image-actual-width nil)      

(add-hook 'org-mode-hook 'soft-wrap-lines) 
(defun soft-wrap-lines ()
  "make lines wrap at window edge and no word boundary, in current buffer."
  (interactive)
  (setq truncate-lines nil)
  (setq word-wrap t))


;; custom-set-faces was added by Custom.  If you edit it by hand, you
;; ;; could mess it up, so be careful.  Your init file should contain
;; ;; only one such instance.  If there is more than one, they won't
;; ;; work right.
;; '(default ((t (:family "文泉驿等宽正黑" :foundry "unknown" :slant
;; 		       normal :weight normal :height 120 :width
;; 		       normal))))
;; '(org-level-1 ((t (:inherit outline-1 :foreground "dodger
;; 			blue" :weight bold :height 1.5))))
;; '(org-level-2 ((t (:inherit outline-2 :foreground "#edd400"
;; 			     :weight bold :height 1.2))))
;; '(org-level-3 ((t (:inherit outline-3 :foreground "#6ac214" 
;; 			     :weight bold))))
;; '(org-level-4 ((t (:inherit outline-4 :foreground "tomato" 
;; 			     :weight bold))))
;; '(org-table ((t (:foreground "LightSkyBlue" :family 
;; 			     "文泉驿等宽正黑"))))
;; '(preview-reference-face ((t (:background "white smoke"))))


;; (setq-default ispell-program-name "aspell")
(global-linum-mode t)

(setenv "PATH"
        (concat
	 (getenv "PATH")
         ":""/opt/local/bin"
         ":""/opt/local/sbin"
	 ":""/usr/texbin"
	 ":""/Library/TeX/Distributions/.DefaultTeX/Contents/Man"
	 ))

(add-hook
 'eshell-mode-hook
 (lambda ()
   (setq pcomplete-cycle-completions nil)
   (setq pcomplete-ignore-case t)))
(custom-set-variables

 ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(ansi-color-names-vector ["white" "red" "green" "yellow" "pale
;;  green" "chocolate" "cyan" "medium sea green"])
;;  '(column-number-mode t)
;;  '(custom-enabled-themes (quote (deeper-blue)))
;;  '(custom-safe-themes (quote ("1157a4055504672be1df1232bed784ba575c60ab44d8e6c7b3800ae76b42f8bd" "5ee12d8250b0952deefc88814cf0672327d7ee70b16344372db9460e9a0e3ffc" "cf08ae4c26cacce2eebff39d129ea0a21c9d7bf70ea9b945588c1c66392578d1" "52588047a0fe3727e3cd8a90e76d7f078c9bd62c0b246324e557dfa5112e0d0c" "7f1263c969f04a8e58f9441f4ba4d7fb1302243355cb9faecb55aec878a06ee9" "49207ef736e83cf06824952ea9364316b1b84cc21d61db438b2913cc1c57b6cb" "843a82ff3b91bec5430f9acdd11de03fc0f7874b15c1b6fbb965116b4c7bf830" default)))
;;  '(display-time-mode t)
;;  '(ispell-dictionary "en")
;;  '(org-hide-leading-stars t)
;;  '(show-paren-mode t)
;;  '(size-indication-mode t)
;;  '(tool-bar-mode nil)
;;  '(truncate-partial-width-windows nil))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )

(provide 'init-old)
