(add-hook 'before-save-hook 'whitespace-cleanup)
(add-hook 'focus-out-hook (lambda () (save-some-buffers t)))

;; Re-open files from last session
(desktop-save-mode 1)

;; auto-detecting indentation style
(require 'dtrt-indent)
(dtrt-indent-mode t)

(require 'hungry-delete)
(global-hungry-delete-mode t)

;; removes nasty bell
(setq ring-bell-function 'ignore)

;; whitespace-mode config
(require 'whitespace)
(setq whitespace-line-column 80) ;; limit line length
(setq whitespace-style '(face tabs empty trailing lines-tail))

;; brings visual feedback to some operations by
;; highlighting portions relating to the operations.
(require 'volatile-highlights)
(volatile-highlights-mode t)

;; display specified symbols as composed characters.
;; Example: in Emacs Lisp mode this replaces the string
;; lambda with the Greek lambda character
(global-prettify-symbols-mode t)

;; when superword mode enabled all complex/compound
;; words are treated as single word
(global-superword-mode nil)
;; underscores, dashes and camel-case aware editing
(global-subword-mode t)

(require 'multiple-cursors)
(require 'expand-region)

;; bling bling, cool scroll bar
(global-yascroll-bar-mode)

;; modular in-buffer completion framework for Emacs
(require 'company)
(global-company-mode)

;; diff-hl
(require 'diff-hl)
(global-diff-hl-mode +1)

;; deals with parens pairs and tries to be smart about it
(require 'smartparens-config)
(show-smartparens-global-mode t)

(require 'saveplace)
(save-place-mode 1)

;; smart tab behavior - indent or complete
(setq tab-always-indent 'indent)

;; projectile is a project management mode
(require 'projectile)
(projectile-global-mode t)

;; anzu-mode enhances isearch by showing total matches and current match position
;; (require 'anzu)
;; (global-anzu-mode)

;; represent undo-history as an actual tree (visualize with C-x u)
(require 'undo-tree)
(setq undo-tree-mode-lighter "")
;; global-undo-tree-mode was failing to enable undo-tree-mode
(add-hook 'find-file-hook 'undo-tree-mode)
;; (global-undo-tree-mode t)

;; allow pasting selection outside of Emacs
(setq x-select-enable-clipboard t)

;; also auto refresh dired, but be quiet about it
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)

;; show keystrokes in progress
(setq echo-keystrokes 0.1)

;; move files to trash when deleting
(setq delete-by-moving-to-trash t)

;; transparently open compressed files
(auto-compression-mode t)

;; revert buffers automatically when underlying files are changed externally
(global-auto-revert-mode t)

;; UTF-8 please
(setq locale-coding-system 'utf-8) ; pretty
(set-terminal-coding-system 'utf-8) ; pretty
(set-keyboard-coding-system 'utf-8) ; pretty
(set-selection-coding-system 'utf-8) ; please
(prefer-coding-system 'utf-8) ; with sugar on top

;; show active region
(transient-mark-mode 1)
(make-variable-buffer-local 'transient-mark-mode)
(put 'transient-mark-mode 'permanent-local t)
(setq-default transient-mark-mode t)

;; remove text in active region if inserting text
(delete-selection-mode t)

;; don't backupfiles
(setq make-backup-files nil)
(setq auto-save-default nil)

;; i hate lockfiles, aka .#file
(setq create-lockfiles nil)

;; save a list of recent files visited. (open recent file with C-x f)
(recentf-mode 1)
(setq recentf-max-saved-items 100) ;; just 20 is too recent

;; save minibuffer history
(savehist-mode 1)
(setq history-length 1000)

;; undo/redo window configuration with C-c <left>/<right>
(winner-mode 1)

;; never insert tabs
(set-default 'indent-tabs-mode nil)

;; show me empty lines after buffer end
(set-default 'indicate-empty-lines t)

(setq-default truncate-lines t)

;; don't be so stingy on the memory, we have lots now. It's the distant future.
(setq gc-cons-threshold 50000000)

;; sentences do not need double spaces to end. Period.
(set-default 'sentence-end-double-space nil)

;; a saner ediff
(setq ediff-diff-options "-w")
(setq ediff-split-window-function 'split-window-horizontally)
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

(setq eval-expression-print-level nil)

;; smooth mouse scrolling
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)

;; Wrap lines
(global-visual-line-mode t)

(provide 'lunfardo-editor)
