;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; filename:	init-org.el
;; author:	toothache
;; time:       	Fri Jan 17 11:24:03 2014
;; version:    	1.1
;; modified:   	Fri Jan 17 11:24:04 2014
;; description: 
;; +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

;;;
;; (add-to-list 'load-path (expand-file-name "~/git/org-mode/lisp"))

;; The auto-mode-alist variable is an AssociationList that associates
;; MajorModes with a pattern to match a buffer filename when it is
;; first opened.
(add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
(require 'org)

;; Standard key bindings
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-cc" 'org-capture)

;; Remove some key bindings
(define-key org-mode-map (kbd "C-c [") nil)
(define-key org-mode-map (kbd "C-c ]") nil)
(define-key org-mode-map (kbd "C-c ;") nil)

;; key bindings from the reference
(global-set-key (kbd "<f12>") 'org-agenda)
;; (global-set-key (kbd "<f5>") 'bh/org-todo)
;; (global-set-key (kbd "<S-f5>") 'bh/widen)
(global-set-key (kbd "<f7>") 'bh/set-truncate-lines)
(global-set-key (kbd "<S-f8>") 'org-cycle-agenda-files)
;; (global-set-key (kbd "<f9> <f9>") 'bh/show-org-agenda)
;; (global-set-key (kbd "<f9> b") 'bbdb)
(global-set-key (kbd "<f9> c") 'calendar)
;; (global-set-key (kbd "<f9> f") 'boxquote-insert-file)
;; (global-set-key (kbd "<f9> g") 'gnus)
;; (global-set-key (kbd "<f9> h") 'bh/hide-other)
;; (global-set-key (kbd "<f9> n") 'bh/toggle-next-task-display)
;; (global-set-key (kbd "<f9> w") 'widen)
;; (global-set-key (kbd "<f9> u") 'bh/narrow-up-one-level)

;; (global-set-key (kbd "<f9> I") 'bh/punch-in)
;; (global-set-key (kbd "<f9> O") 'bh/punch-out)

;; (global-set-key (kbd "<f9> o") 'bh/make-org-scratch)

;; (global-set-key (kbd "<f9> r") 'boxquote-region)
;; (global-set-key (kbd "<f9> s") 'bh/switch-to-scratch)

;; (global-set-key (kbd "<f9> t") 'bh/insert-inactive-timestamp)
;; (global-set-key (kbd "<f9> T") 'bh/toggle-insert-inactive-timestamp)

(global-set-key (kbd "<f9> v") 'visible-mode)
(global-set-key (kbd "<f9> SPC") 'bh/clock-in-last-task)
(global-set-key (kbd "C-<f9>") 'previous-buffer)
(global-set-key (kbd "M-<f9>") 'org-toggle-inline-images)
(global-set-key (kbd "C-x n r") 'narrow-to-region)
(global-set-key (kbd "<f11>") 'org-clock-goto)
(global-set-key (kbd "C-<f11>") 'org-clock-in)
(global-set-key (kbd "C-s-<f12>") 'bh/save-then-publish)
(global-set-key (kbd "C-c c") 'org-capture)

(defun bh/hide-other ()
  (interactive)
  (save-excursion
    (org-back-to-heading 'invisible-ok)
    (hide-other)
    (org-cycle)
    (org-cycle)
    (org-cycle)))

(defun bh/set-truncate-lines ()
  "Toggle value of truncate-lines and refresh window display."
  (interactive)
  (setq truncate-lines (not truncate-lines))
  ;; now refresh window display (an idiom from simple.el):
  (save-excursion
    (set-window-start (selected-window)
                      (window-start (selected-window)))))

(defun bh/make-org-scratch ()
  (interactive)
  (find-file "/tmp/publish/scratch.org")
  (gnus-make-directory "/tmp/publish"))

(defun bh/switch-to-scratch ()
  (interactive)
  (switch-to-buffer "*scratch*"))

;; TODO related
(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "DONE(d)" "CANCELLED(c)" "POSTPONED(p)"))))

              ;; (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)" "PHONE" "MEETING"))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "dark orange" :weight bold)
              ;; ("NEXT" :foreground "blue" :weight bold)
              ("DONE" :foreground "chocolate" :weight bold)
              ;; ("WAITING" :foreground "orange" :weight bold)
              ;; ("HOLD" :foreground "magenta" :weight bold)
              ("CANCELLED" :foreground "rosy brown" :weight bold)
              ;; ("MEETING" :foreground "forest green" :weight bold)
              ("POSTPONED" :foreground "tan" :weight bold))))


(add-hook 'org-mode-hook 'turn-on-auto-fill) 
(add-hook 'org-mode-hook 'turn-on-font-lock)
;; (add-hook 'org-mode-hook 'org-support-shift-select) 

;; (setq org-image-actual-width nil)      

(add-hook 'org-mode-hook 'soft-wrap-lines) 
(defun soft-wrap-lines ()
  "make lines wrap at window edge and no word boundary, in current buffer."
  (interactive)
  (setq truncate-lines nil)
  (setq word-wrap t))

(setq org-agenda-files (quote ("~/Documents/Org")))

;; (eval-after-load "org-mode"
;;   '(define-key org-mode-map (kbd "C-c [") nil)) 
;; (eval-after-load "org-mode"
;;   '(define-key org-mode-map (kbd "C-c ]") nil)) 


;; (setq org-agenda-files (list "~/Documents/org/labs.org"
;; 			     "~/Documents/org/life.org"
;; 			     "~/Documents/org/lte.org"))

;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(default ((t (:family "文泉驿等宽正黑" :foundry "unknown" :slant normal :weight normal :height 120 :width normal)))) '(org-level-1 ((t (:inherit
;;  outline-1 :foreground "dodger blue" :weight bold :height 1.5))))
;;  '(org-level-2 ((t (:inherit
;;  outline-2 :foreground "#edd400" :weight bold :height 1.2))))
;;  '(org-level-3 ((t (:inherit
;;  outline-3 :foreground "#6ac214" :weight bold))))
;;  '(org-level-4 ((t (:inherit
;;  outline-4 :foreground "tomato" :weight bold))))
;;  '(org-table ((t (:foreground "LightSkyBlue" :family "文泉驿等宽正黑")))) '(preview-reference-face ((t (:background "white
;;  smoke")))))

(provide 'init-org)
