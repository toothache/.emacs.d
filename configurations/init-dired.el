(require 'dired-x)

;; omitting files in dired
(setq-default dired-omit-files-p t)

(setq dired-omit-files
      (concat dired-omit-files "\\|^\\..+$\\|^buildfre\\|^GPATH$\\|^GTAGS$\\|^GRTAGS$"))

(add-to-list 'dired-omit-extensions ".log")

(define-key dired-mode-map (kbd "C-o") 'dired-omit-mode)

;; ;; dired 相关
;; (setq dired-recursive-deletes t)       ; 可以递归的删除目录
;; (setq dired-recursive-copies t)        ; 可以递归的进行拷贝
;; (setq dired-omit-files
;;       (concat dired-omit-files "\\|^\\..+$"))

(defun disable-dired-omit-mode () (dired-hide-details-mode t))

(add-hook 'dired-mode-hook 'disable-dired-omit-mode)

;; 打开 ido 模式
(ido-mode t)

;; 避免在查找文件时的补全s
(setq ido-auto-merge-work-directories-length -1)

;; (setq my-dired-default-dir "C:/Users/yatengh")
(provide 'init-dired)
