(lunfardo-require-packages '(moe-theme
                             monokai-theme
                             zenburn-theme
                             ))

;; popwin is a popup window manager for Emacs
(require 'popwin)
(popwin-mode 1)

(setq initial-scratch-message "")
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message 'current-user)

;; Answering just 'y' or 'n' will do
(defalias 'yes-or-no-p 'y-or-n-p)

(blink-cursor-mode 0)

(tool-bar-mode 0)
(menu-bar-mode 0)
;(scroll-bar-mode 0)

(setq scroll-margin 0
      scroll-step 1
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

(line-number-mode t)
(column-number-mode t)

(setq redisplay-dont-pause t)

;; Confirm that (require 'powerline) must before (require 'moe-theme).
;; Otherwise, powerline-moe-theme will not be initallized.
(require 'powerline)
(require 'moe-theme)

(powerline-default-theme)
(load-theme 'moe-dark t)

(setq moe-theme-mode-line-color 'purple)
(powerline-moe-theme)

(global-linum-mode 1)
(global-visual-line-mode 1)

(global-hl-line-mode 1)

(set-face-attribute 'linum nil :height 100)

(provide 'lunfardo-ui)
