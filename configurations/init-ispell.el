;;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;; init-ispell.el
;;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

(setenv "PATH" (concat "C:\\Program Files\\Aspell\\bin;" (getenv "PATH")))

(setq exec-path (append exec-path
    '("C:\\Program Files\\Aspell\\bin\\")))

(require 'ispell)

(custom-set-variables
    ;; '(ispell-dictionary "en")
    '(ispell-program-name "aspell"))

(global-set-key (kbd "<f8>") 'ispell-word)

(provide 'init-ispell )
