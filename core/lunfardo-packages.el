(require 'package)
(require 'cl)

(add-to-list 'package-archives
  '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; Guarantee all packages are installed on start
(defvar lunfardo-packages
  '(
    ace-jump-mode
    ace-window
    ack-and-a-half
    ag
    aggressive-indent
    anzu
    buffer-move
    company
    dash
    diff-hl
    discover-my-major
    dockerfile-mode
    drag-stuff
    dtrt-indent
    easy-kill
    epl
    exec-path-from-shell
    expand-region
    f
    flx-ido
    gist
    git-timemachine
    github-browse-file
    highlight-symbol
    hungry-delete
    ido-vertical-mode
    magit
    manage-minor-mode
    move-text
    multiple-cursors
    paradox
    popwin
    powerline
    projectile
    quickrun
    rainbow-delimiters
    rainbow-mode
    restclient
    smartparens
    smex
    undo-tree
    volatile-highlights
    whitespace-cleanup-mode
    yascroll
    yasnippet
    yasnippet-bundle
    cider
    wakatime-mode
    elixir-mode
    scala-mode
    fill-column-indicator
    igrep ;; Simple replacement for rgrep (which doesn 't work on Mac OS X)
    )
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
