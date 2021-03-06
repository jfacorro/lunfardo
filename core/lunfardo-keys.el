(defvar zxcv-mode-keymap (make-keymap) "zxcv-mode keymap.")

;; -----------------------------------------------------------------------------
;; zxcv
;; -----------------------------------------------------------------------------
;; Copy, Paste & Cut
(define-key zxcv-mode-keymap (kbd "C-x")         'kill-line-or-region)
(define-key zxcv-mode-keymap [(control c)]       'easy-kill)
(define-key zxcv-mode-keymap [(control v)]       'yank)
(define-key zxcv-mode-keymap (kbd "C-S-k")       'kill-whole-line)

;; Undo/Redo
(define-key zxcv-mode-keymap (kbd "C-S-z")       'undo-tree-redo)
(define-key zxcv-mode-keymap (kbd "C-z")         'undo-tree-undo)

;; Navigation & Selection
(define-key zxcv-mode-keymap (kbd "C-a")         'mark-whole-buffer)
(define-key zxcv-mode-keymap (kbd "C-l")         'er/expand-region)
(define-key zxcv-mode-keymap (kbd "<C-M-left>")  'beginning-of-line)
(define-key zxcv-mode-keymap (kbd "<C-M-right>") 'end-of-visual-line)
(define-key zxcv-mode-keymap (kbd "C-g")         'goto-line)
(define-key zxcv-mode-keymap (kbd "<C-S-down>")  'move-text-down)
(define-key zxcv-mode-keymap (kbd "<C-S-up>")    'move-text-up)
(define-key zxcv-mode-keymap (kbd "C-d")         'mc/mark-next-like-this)
(define-key zxcv-mode-keymap (kbd "<S-return>")  'smart-open-line)

;; Buffers & Files
(define-key zxcv-mode-keymap (kbd "C-p")         'helm-mini)
(define-key zxcv-mode-keymap (kbd "C-o")         'ido-find-file)
(define-key zxcv-mode-keymap (kbd "C-S-o")       'helm-projectile-find-file-dwim)
(define-key zxcv-mode-keymap (kbd "C-<tab>")     'switch-to-previous-buffer)
(define-key zxcv-mode-keymap (kbd "C-q")         'save-buffers-kill-emacs)
(define-key zxcv-mode-keymap (kbd "C-n")         'generate-buffer)
(define-key zxcv-mode-keymap (kbd "C-S-t")       'reopen-killed-file)
(define-key zxcv-mode-keymap (kbd "C-f")         'helm-swoop)
(define-key zxcv-mode-keymap (kbd "C-M-p")       'helm-projectile)
(define-key zxcv-mode-keymap (kbd "C-s")         'save-buffer)
(define-key zxcv-mode-keymap (kbd "C-w")         'kill-this-buffer)
(define-key zxcv-mode-keymap (kbd "C-M-w")       'lunfardo-kill-all-buffers)

;; Keyboard Macros
(define-key zxcv-mode-keymap (kbd "<f3>")        'kmacro-start-macro)
(define-key zxcv-mode-keymap (kbd "<f4>")        'kmacro-end-or-call-macro)

;; Text size
(define-key zxcv-mode-keymap (kbd "C-+")         'text-scale-increase)
(define-key zxcv-mode-keymap (kbd "C--")         'text-scale-decrease)

;; Code
(define-key zxcv-mode-keymap (kbd "C-r")         'helm-semantic-or-imenu)
(define-key zxcv-mode-keymap (kbd "C-<SPC>")     'company-complete)
(define-key zxcv-mode-keymap (kbd "C-/")         'comment-or-uncomment-region)

;; Language Server Protocol
(define-key zxcv-mode-keymap (kbd "M-u")         'lsp-find-references)
(define-key zxcv-mode-keymap (kbd "M-p")         'helm-lsp-workspace-symbol)

(define-minor-mode
  zxcv-mode
  "zxcv mode"
  :lighter " zxcv"
  :keymap zxcv-mode-keymap
  :global t)

(defconst global-minor-mode-alist (list (cons 'zxcv-mode zxcv-mode-keymap)))
(add-to-ordered-list 'emulation-mode-map-alists 'global-minor-mode-alist)
(zxcv-mode t)

;; -----------------------------------------------------------------------------
;; Global
;; -----------------------------------------------------------------------------
(global-set-key [escape]                         'keyboard-escape-quit)
(define-key mc/keymap [escape]                   'multiple-cursors-mode)
(define-key company-mode-map [escape]            'company-abort)

(global-set-key (kbd "<f8>") ctl-x-map)
(global-set-key (kbd "<f9>") mode-specific-map)

(global-set-key [remap kill-ring-save]           'easy-kill)

(global-set-key (kbd "C-S-b")                    'github-browse-file)

;; requires ag command installed
(global-set-key (kbd "C-S-f")                    'helm-do-ag)

(global-set-key (kbd "C-S-g")                    'helm-google-suggest)
(global-set-key (kbd "C-S-l")                    'helm-descbinds)
(global-set-key (kbd "C-S-i")                    'find-user-init-file)
;; (global-set-key (kbd "C-S-h")                    'anzu-query-replace)
(global-set-key (kbd "C-M-v")                    'helm-show-kill-ring)

;; Undo Tree
(global-set-key (kbd "C-S-u")                    'undo-tree-visualize)

;; Help
(global-set-key (kbd "C-h f")                    'helm-apropos)
(global-set-key (kbd "C-h r")                    'helm-info-emacs)
(global-set-key (kbd "C-h C-l")                  'helm-locate-library)

(defun other-window-inverse ()
  (interactive)
  (other-window -1))

;; Windows Splitting and Navigation
(global-set-key (kbd "C-0")                      'delete-window)
(global-set-key (kbd "C-1")                      'delete-other-windows)
(global-set-key (kbd "C-2")                      'split-window-horizontally)
(global-set-key (kbd "C-3")                      'split-window-vertically)
(global-set-key (kbd "C-`")                      'other-window)
(global-set-key (kbd "C-¬")                      'other-window-inverse)

;; Window size
(global-set-key (kbd "M-S-<left>")               'shrink-window-horizontally)
(global-set-key (kbd "M-S-<right>")              'enlarge-window-horizontally)
(global-set-key (kbd "M-S-<down>")               'shrink-window)
(global-set-key (kbd "M-S-<up>")                 'enlarge-window)

;; Mouse
(global-set-key (kbd "<C-S-mouse-1>")            'mc/add-cursor-on-click)

;; Emacs
(global-set-key (kbd "C-q")                      'kill-emacs)
(global-set-key (kbd "<C-return>")               'toggle-frame-fullscreen)

(provide 'lunfardo-keys)
