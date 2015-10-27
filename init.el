(defvar current-user
  (getenv
   (if (equal system-type 'windows-nt) "USERNAME" "USER")))

(message "Lunfardo is powering up... Be patient, Master %s!" current-user)

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
(require 'lunfardo-evil)
(require 'lunfardo-keys)
(require 'lunfardo-modules)

(when (eq system-type 'darwin)
  (require 'lunfardo-osx))

(toggle-frame-maximized)

(setq js-indent-level 2)
(setq erlang-indent-level 2)
(setq fci-rule-column 80)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(edts-man-root "/Users/jfacorro/.emacs.d/edts/doc/18.1")
 '(wakatime-api-key "6be7ca22-ba36-455c-a5b0-2200a11ebf5c")
 '(wakatime-cli-path "/usr/local/bin/wakatime"))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-wakatime-mode)
