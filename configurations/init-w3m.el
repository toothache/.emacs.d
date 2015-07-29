;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; filename:	init-w3m.el
;; author:	toothache
;; time:       	Mon Jan 27 22:11:35 2014
;; version:    	1.2
;; modified:   	Mon Jan 27 22:47:08 2014
;; description: v1.1 http://guitarpenguin.is-programmer.com/posts/40877.html
;; 		v1.2 byte-compile w3m-ems.elc
;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

;; set emacs-w3m
;;设置emacs-w3m浏览器
(add-to-list 'load-path "~/.emacs.d/plugins/emacs-w3m/")
(require 'w3m)
(require 'w3m-load)
;; ;(require 'mime-w3m)
  
;; 设置w3m主页
(setq w3m-home-page "http://www.google.com")
  
;; 默认显示图片
(setq w3m-default-display-inline-images t)
(setq w3m-default-toggle-inline-images t)
  
;; 使用cookies
(setq w3m-command-arguments '("-cookie" "-F"))
(setq w3m-use-cookies t)
(setq browse-url-browser-function 'w3m-browse-url)
(setq w3m-view-this-url-new-session-in-background t)

(provide 'init-w3m)
