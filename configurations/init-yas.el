;;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; init-yas.el
;;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; 载入 yasnippet
(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
;; yas 的模板目录
(setq yas-snippet-dirs
      '("~/.emacs.d/plugins/yasnippet/yasmate/snippets" 
        "~/.emacs.d/plugins/yasnippet/snippets" ))
;; 默认全局打开 yas
(yas-global-mode 1)
;; tab 键位的配置
(global-set-key (kbd "<C-tab>") 'yas/expand)

(provide 'init-yas)
