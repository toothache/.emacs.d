;;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; init-matlab
;;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

;; Setting up matlab-mode
(add-to-list 'load-path "~/.emacs.d/plugins/matlab-emacs")
(load-library "matlab-load")
(custom-set-variables
 '(matlab-shell-command-switches '("-nodesktop -nosplash")))
(add-hook 'matlab-mode
        (lambda ()
          (auto-complete-mode 1) ))
(setq auto-mode-alist
    (cons
     '("\\.m$" . matlab-mode)
     auto-mode-alist))

(add-hook 'matlab-mode-hook
	  '(lambda () 
	     (define-key matlab-mode-map (kbd "C-c C-e")
	     'matlab-insert-end-block)))

;; Enable CEDET feature support for MATLAB code. (Optional)
 (matlab-cedet-setup)


(server-start)
(setq server-socket-dir (format "/tmp/emacs%d" (user-uid)))

(provide 'init-matlab )

