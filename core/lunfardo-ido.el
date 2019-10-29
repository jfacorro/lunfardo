(require 'ido)
(require 'flx-ido)
(require 'smex)

(smex-initialize)

(setq ido-enable-prefix nil
      ido-use-filename-at-point 'guess
      ido-max-prospects 10
      ido-default-file-method 'selected-window
      ido-auto-merge-work-directories-length -1)

(ido-mode 1)
;; Disable id-everywhere since it conflicts with helm-mode
;; (ido-everywhere 1)
(ido-vertical-mode 1)
(setq ido-vertical-define-keys 'C-n-C-p-up-and-down)
(flx-ido-mode 1)
(setq ido-use-faces nil)

(provide 'lunfardo-ido)
