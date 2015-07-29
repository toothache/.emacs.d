;; dired 相关
(setq dired-recursive-deletes t)       ; 可以递归的删除目录
(setq dired-recursive-copies t)        ; 可以递归的进行拷贝

;; 隐藏无用文件
(add-to-list 'load-path 
             "~/.emacs.d/plugins/dired-plus")
(require 'dired+)

(setq-default dired-omit-files-p t)   ; this is buffer-local variable
(setq dired-omit-files
      (concat dired-omit-files "\\|^\\..+$"))
;; 打开 ido 模式
(ido-mode t)
;; 避免在查找文件时的补全s
(setq ido-auto-merge-work-directories-length -1)

(setq my-dired-default-dir "C:/Users/yatengh")
(provide 'init-dired)
