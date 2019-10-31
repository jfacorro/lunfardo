(lunfardo-require-packages '(monokai-theme))

(require 'monokai-theme)
(set-face-attribute 'region nil
                    :background monokai-cyan
                    :foreground monokai-background)

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
(scroll-bar-mode 0)

(setq scroll-margin 0
      scroll-step 1
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

(global-display-line-numbers-mode t)
(column-number-mode t)

(setq redisplay-dont-pause t)

;; Better mode-line
(require 'powerline)

;; Highlight current line
(global-hl-line-mode 1)

(provide 'lunfardo-ui)
