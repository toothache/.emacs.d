;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; filename:	init-latex
;; author:	toothache
;; time:       	Thu Jan 16 15:27:26 2014
;; version:    	1.2
;; modified:   	Thu Jan 16 16:27:26 2014
;; description: v1.1 1) Add comments 2) auto-complete
;; 		v1.2 1) RefTeX support
;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

;; This line tells emacs where to find the latex compiler
(add-to-list 'load-path 
	     "~/.emacs.d/elpa/auctex-11.88.3")

(load "auctex.el" nil t t) 
;; (load "preview-latex.el" nil t t) 

;; 打开 RefTeX
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)
;;*toc*buffer 在左侧。
(setq reftex-toc-split-windows-horizontally t)
;;*toc*buffer 使用整个 frame 的比例。
(setq reftex-toc-split-windows-fraction 0.2)
;; 快速刷新RefTeX文档结构
;; (eval-after-load 'LaTeX-mode
;;   '(define-key LaTeX-mode-map (kbd "s-p") 'reftex-parse-all))

(add-hook 'LaTeX-mode-hook 
          (lambda () 
	    ;; 接下来是和编译 TeX 有关的
	    (setq TeX-engine 'xetex)
	    ;; 编译的时候,不在当前窗口中显示编译信息	    
	    (setq TeX-show-compilation nil)
	    (setq TeX-clean-confirm nil)
	    (setq TeX-save-query nil)
	    ;; pdf模式，并重新定义 pdf viewer,
	    (setq TeX-PDF-mode t)	    
	    ;; 打开自动补全
	    (auto-complete-mode t)
	    ;; 打开 outline mode
	    (outline-minor-mode t)
	    ;; 数学模式
	    'LaTeX-math-mode
	    ;; 代码折叠
	    (TeX-fold-mode t)
	    (setq TeX-fold-env-spec-list
		  (quote (("[figure]" ("figure"))
			  ("[table]" ("table"))
			  ("[itemize]"("itemize"))
			  ("[overpic]"("overpic")))))
	    ;; key bindings
	    (define-key LaTeX-mode-map (kbd "s-p") 'reftex-parse-all)
	    (define-key LaTeX-mode-map (kbd "s-q s-q") 'preview-at-point)
	    (define-key LaTeX-mode-map (kbd "s-q s-d") 'preview-environment)
	    (define-key LaTeX-mode-map (kbd "s-q s-w")
	    'preview-clearout-document) ))


;; 设置 Open 作为 Mac OS 下的 pdf 浏览器
(setq TeX-view-program-selection 
      '(((output-dvi style-pstricks)
	 "dvips and PDF Viewer")
	(output-dvi "PDF Viewer") 
	(output-pdf "PDF Viewer") 
	(output-html "Safari")))

;; (setq TeX-view-program-list 
;;       '(("dvips and PDF Viewer" "%(o?)dvips %d -o && open %f") 
;; 	("PDF Viewer" "open %o") 
;; 	("Safari" "open %o")))

(provide 'init-latex)
