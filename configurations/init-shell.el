;;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; init-shell.el
;;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; 设置 PATH
;; (setenv "PATH" (concat "/usr/texbin:/usr/local/bin:" (getenv "PATH")))
;; (setq exec-path (append '("/usr/texbin" "/usr/local/bin") exec-path))

(add-hook
 'eshell-mode-hook
 (lambda ()
   ;; (setq pcomplete-cycle-completions t)	;是否循环补全
   (setq pcomplete-ignore-case t)))	;忽略大小写

(provide 'init-shell)
