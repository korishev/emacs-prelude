(disable-theme 'zenburn)
;;(load-theme 'solarized-dark t)
;;(load-theme 'spolsky t)
(load-theme 'grandshell t)
(setq whitespace-line-column 200)
(setq prelude-whitespace t)
(setq prelude-cleanup-whitespace-on-save t)

;; set font to source code pro
;; FONT NOT FOUND/WORKING
;; (set-default-font "Source Code Pro")
;; (set-face-attribute 'default nil :font "Source Code Pro" :height 140)
;; (set-face-font 'default "Source Code Pro")

;; Add Line Numbers
(setq linum-format "%4d \u2502")
(global-linum-mode 1)
(setq mac-command-modifier 'super)

(require 'rinari)
(global-rinari-mode)

(require 'multiple-cursors)
(require 'rcodetools)

(defadvice rspec-compile (around rspec-compile-around)
  "Use BASH shell for running the specs because of ZSH issues."
  (let ((shell-file-name "/bin/bash"))
    ad-do-it))
(ad-activate 'rspec-compile)

(setq mac-option-modifier 'meta)
(setq mac-command-modifier 'super)
(setq ns-function-modifier 'hyper)


(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "C-S-w") 'whitespace-cleanup)
(global-set-key (kbd "C-c C-c") 'xmp)
