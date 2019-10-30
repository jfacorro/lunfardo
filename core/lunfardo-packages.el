(require 'package)
(require 'cl)

(add-to-list 'package-archives
  '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; Guarantee all packages are installed on start
(defvar lunfardo-packages
  '(ace-window
    ;; A frontend for ag the silver searcher
    ag
    ;; Indent on every keytroke
    aggressive-indent

    ;; Query and Replace
    ;; anzu

    ;; Move buffers around
    ;; buffer-move

    ;; Completion framework
    company

    ;; Language Server Protocol
    company-lsp
    lsp-ui

    ;; Modern list API for Emacs
    dash

    ;; Highlight uncommitted changes
    diff-hl

    ;; discover-my-major

    ;; Figure out spaces vs tabs
    dtrt-indent
    ;; Nicer copy & paste
    easy-kill

    ;; Package manager
    ;; epl

    ;; Make Emacs use shell-defined values for $PATH etc in OS X
    exec-path-from-shell

    ;; Increase selected region by semantic units.
    expand-region

    ;; f

    ;; more powerful alternative to `ido-mode''s
    ;; built-in flex matching.
    flx-ido

    ;; gist
    ;; git-timemachine
    ;; github-browse-file
    highlight-symbol

    ;; Vertical mode
    ido-vertical-mode

    ;; magit
    ;; manage-minor-mode

    ;; Move current line up and down
    move-text
    ;; Multiple Cursors
    multiple-cursors
    ;; Pop-up windows (not working AFAIK)
    popwin
    ;; Better mode-line
    powerline
    ;; Project handling
    projectile
    ;;
    rainbow-delimiters
    ;; User defined parenthesis balancing
    smartparens
    ;; M-x interface with Ido-style fuzzy matching and ranking heuristics.
    smex
    ;; Undo tree
    undo-tree
    volatile-highlights
    ;; Cleanup whitespace
    whitespace-cleanup-mode
    ;; Scroll bar
    yascroll
    ;; Snippets
    yasnippet
    ;; Wakatime
    wakatime-mode
    ;; Language modes
    dockerfile-mode
    elixir-mode
    scala-mode
    yaml-mode
    clojure-mode)
  "List of packages needs to be installed at launch.")

(defun lunfardo-packages-installed-p ()
  "Check if all packages in `lunfardo-packages' are installed."
  (every #'package-installed-p lunfardo-packages))

(defun lunfardo-require-package (package)
  "Install PACKAGE unless already installed."
  (unless (memq package lunfardo-packages)
    (add-to-list 'lunfardo-packages package))
  (unless (package-installed-p package)
    (package-install package)))

(defun lunfardo-require-packages (packages)
  "Ensure PACKAGES are installed.
Missing packages are installed automatically."
  (mapc #'lunfardo-require-package packages))

(defun lunfardo-install-packages ()
  "Install all packages listed in `lunfardo-packages'."
  (unless (lunfardo-packages-installed-p)
    ;; check for new packages (package versions)
    (message "%s" "Emacs Lunfardo is now refreshing its package database...")
    (package-refresh-contents)
    (message "%s" " done.")
    ;; install the missing packages
    (lunfardo-require-packages lunfardo-packages)))

(lunfardo-install-packages)

(provide 'lunfardo-packages)
