
;; filename:	init-shortcuts.el
;; author:	toothache
;; time:       	Fri Jan 17 11:30:43 2014
;; version:    	1.1
;; modified:   	Fri Jan 17 11:30:44 2014
;; description: 
;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

;; mac os 特定
;;(custom-set-variables
;; '(mac-command-modifier (quote super))
;; '(mac-control-modifier (quote control))
;; '(mac-option-modifier (quote meta)))

;; win specific
(custom-set-variables
 '(w32-lwindow-modifier (quote super)))

;; switch windows
(global-set-key (kbd "C-<left>") 'windmove-left)
(global-set-key (kbd "C-<right>") 'windmove-right)
(global-set-key (kbd "C-<up>") 'windmove-up)
(global-set-key (kbd "C-<down>") 'windmove-down)

;; (global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-x l") 'goto-line)

(global-set-key (kbd "C-c C-r") 'read-only-mode)

;; 复制粘贴
;; (global-set-key (kbd "C-x C-c") 'kill-ring-save)
;; (global-set-key (kbd "C-x C-z") 'kill-region)
;; (global-set-key (kbd "C-x C-v") 'clipboard-yank)

(global-set-key (kbd "s-a") 'mark-whole-buffer)
(global-set-key (kbd "C-f") 'ido-find-file)
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; ibuffer
(require 'ibuffer)

;; ispell

;; whitespace mode
(global-set-key (kbd "C-x w") 'whitespace-mode)
(global-set-key (kbd "C-x t") 'whitespace-toggle-options)

(global-set-key [f11] 'toggle-frame-fullscreen)

(global-set-key [f4] 'ibuffer)(display-time-mode 1)
(global-set-key [f5] 'revert-buffer)
(global-set-key [f6] 'other-frame)
(global-set-key [f7] 'eval-buffer)
(global-set-key [f8] 'eshell)
(global-set-key [f9] 'ispell-region)

(global-set-key (kbd "C-x <right>") 'other-frame)

;; (defun other-window-visible ()  
;;   (interactive)  
;;   (other-window 0 'visible))  
;; (global-set-key "\C-x5oo" 'other-window-visible)  

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

(provide 'init-shortcuts)
