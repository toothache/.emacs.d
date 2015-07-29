;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; filename:	init-fonts.el
;; author:	toothache
;; time:       	Sun Jan 26 10:26:39 2014
;; version:    	v1.1
;; modified:   	Sun Jan 26 10:26:40 2014
;; description: org form font -- to be solved
;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

;; (defun qiang-font-existsp (font)
;;   (if (null (x-list-fonts font))
;;       nil t))

;; (defun qiang-make-font-string (font-name font-size)
;;   (if (and (stringp font-size) 
;;            (equal ":" (string (elt font-size 0))))
;;       (format "%s%s" font-name font-size)
;;     (format "%s %s" font-name font-size)))

;; (defun qiang-set-font (english-fonts
;;                        english-font-size
;;                        chinese-fonts
;;                        &optional chinese-font-size)
;;   "english-font-size could be set to \":pixelsize=18\" or a integer.
;; If set/leave chinese-font-size to nil, it will follow english-font-size"
;;   (require 'cl)                         ; for find if
;;   (let ((en-font (qiang-make-font-string
;;                   (find-if #'qiang-font-existsp english-fonts)
;;                   english-font-size))
;;         (zh-font (font-spec :family (find-if #'qiang-font-existsp chinese-fonts)
;;                             :size chinese-font-size)))
 
;;     ;; Set the default English font
;;     ;; 
;;     ;; The following 2 method cannot make the font settig work in new frames.
;;     ;; (set-default-font "Consolas:pixelsize=18")
;;     ;; (add-to-list 'default-frame-alist '(font . "Consolas:pixelsize=18"))
;;     ;; We have to use set-face-attribute
;;     (message "Set English Font to %s" en-font)
;;     (set-face-attribute
;;      'default nil :font en-font)
 
;;     ;; Set Chinese font 
;;     ;; Do not use 'unicode charset, it will cause the english font setting invalid
;;     (message "Set Chinese Font to %s" zh-font)
;;     (dolist (charset '(kana han symbol cjk-misc bopomofo))
;;       (set-fontset-font (frame-parameter nil 'font)
;;                         charset
;;                         zh-font))))

;; (set-language-environment 'UTF-8)
;; (setenv "LANG" "en_US.UTF-8")
;; (setq default-buffer-file-coding-system 'utf-8)
;; (setq default-file-name-coding-system 'utf-8)
;; (setq default-keyboard-coding-system 'utf-8)
;; (setq default-process-coding-system 'utf-8)
;; (setq default-terminal-coding-system 'utf-8)

;; (qiang-set-font
;;  '("Consolas" "Monaco" "DejaVu Sans Mono" "Monospace" "Courier New") ":pixelsize=18"
;;  '("Microsoft Yahei" "文泉驿等宽微米黑" "黑体" "新宋体" "宋体"))

;; For Windows
(global-set-key (kbd "<C-wheel-up>") 'text-scale-increase)
(global-set-key (kbd "<C-wheel-down>") 'text-scale-decrease)

;; Setting English Font
(set-face-attribute
 'default nil :font "Inconsolata" :foundry "outline" :height 120)
;; :slant "normal" :weight "normal" :height 120 :width "normal")
 
;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font)
                      charset
                      (font-spec :family "Microsoft Yahei" :height 120)))

;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(default ((t (:family "Inconsolata" :foundry "outline" :slant normal :weight normal :height 120 :width normal))))
;;  '(preview-face ((t nil)))
;;  '(preview-reference-face ((t (:background "white")))))

;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(default ((t (:family "YaHei Consolas Hybrid" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))

(provide 'init-fonts)
