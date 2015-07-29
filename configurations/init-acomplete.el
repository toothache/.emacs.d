;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; filename:	init-acomplete.el
;; author:	toothache
;; time:       	Thu Jan 16 17:39:04 2014
;; version:    	1.1
;; modified:   	Thu Jan 16 17:39:08 2014
;; description: v1.1 1) fix pos-tip forecolor bug
;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

;; 载入 auto-complete
(add-to-list 'load-path 
	     "~/.emacs.d/plugins/auto-complete-suite/pos-tip")
(add-to-list 'load-path
	     "~/.emacs.d/plugins/auto-complete-suite/fuzzy-el")
(add-to-list 'load-path 
	     "~/.emacs.d/plugins/auto-complete-suite/popup-el")
(add-to-list 'load-path 
	     "~/.emacs.d/plugins/auto-complete-suite/auto-complete")
(require 'auto-complete-config)

;; ac 的字典目录
(add-to-list 'ac-dictionary-directories
 	     "~/.emacs.d/plugins/auto-complete-suite/auto-complete/dict")
(ac-config-default)
(set-default 'ac-sources
	     '(ac-source-yasnippet
	       ac-source-abbrev
	       ac-source-dictionary
	       ac-source-words-in-buffer
	       ac-source-words-in-same-mode-buffers
	       ac-source-words-in-all-buffer))

;; pos-tip列表
(require 'pos-tip)
(setq ac-quick-help-prefer-pos-tip t)

;; quick help
(setq ac-use-quick-help t)
(setq ac-quick-help-delay 1.0)

;; 设置TAB键作用
(setq ac-dwim t)

;; ;; 设置auto-complete的触发键
;; (setq ac-auto-start nil)              ;auto complete using clang is
;; 				      ;CPU sensitive
;; (ac-set-trigger-key "<C-return>")

;; 发ac的自动补全功能的，例如backspace之后，ac的补全就消失了，除非再次
;; 输入一个按键。其实，这些是可以由我们控制的，例如：这里将backspace的
;; 删除后仍旧可以触发ac补全：
(setq ac-trigger-commands
      (cons 'backward-delete-char-untabify ac-trigger-commands))

;; 使用fuzzy功能
(setq ac-fuzzy-enable t)

;; yasnippet 设置
(set-face-background 'ac-candidate-face "lightgray")
(set-face-underline 'ac-candidate-face "darkgray")
(set-face-background 'ac-selection-face "steelblue")

(defface ac-yasnippet-candidate-face
  '((t (:background "sandybrown" :foreground "black")))
  "Face for yasnippet candidate.")
 
(defface ac-yasnippet-selection-face
  '((t (:background "coral3" :foreground "white")))
  "Face for the yasnippet selected candidate.")
 
(defvar ac-source-yasnippet
  '((candidates . ac-yasnippet-candidate)
    (action . yas/expand)
    (candidate-face . ac-yasnippet-candidate-face)
    (selection-face . ac-yasnippet-selection-face))
  "Source for Yasnippet.")

;; 全局打开自动补全
(global-auto-complete-mode 0)
(provide 'init-acomplete )
