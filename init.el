(defvar current-user
  (getenv
   (if (equal system-type 'windows-nt) "USERNAME" "USER")))

(message "Lunfardo is powering up... Be patient, %s!" current-user)

(defvar lunfardo-dir (file-name-directory load-file-name))
(defvar lunfardo-core-dir (expand-file-name "core" lunfardo-dir))
(defvar lunfardo-modules (expand-file-name "modules" lunfardo-dir))
(add-to-list 'load-path lunfardo-core-dir)
(add-to-list 'load-path lunfardo-modules)

(require 'lunfardo-packages)
(require 'lunfardo-core)
(require 'lunfardo-ui)
(require 'lunfardo-editor)
(require 'lunfardo-core)
(require 'lunfardo-ido)
(require 'lunfardo-helm)
(require 'lunfardo-yasnippet)
(require 'lunfardo-company)
(require 'lunfardo-keys)
(require 'lunfardo-modules)

;; LSP Client
(require 'lsp-mode)
(add-hook 'erlang-mode-hook (lambda () (lsp t)))
(setq lsp-log-io t)
(setq lsp-tcp-connection-timeout 1000)

;; OS X
(when (eq system-type 'darwin)
  (require 'lunfardo-osx))

;; Maximize window
(toggle-frame-maximized)
(toggle-frame-fullscreen)

;; Indent levels
(setq js-indent-level 2)
(setq erlang-indent-level 2)

;; Set column limit indicator to 80
(setq fci-rule-column 80)

;; Enable caching for projectile to avoid indexing every time
(setq projectile-enable-caching t)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Enable wakatime
(global-wakatime-mode)
