(require 'lunfardo-programming)

(lunfardo-require-packages '(paredit))

(add-to-list 'auto-mode-alist '("\\.clj\\'" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.clje\\'" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.cljc\\'" . clojure-mode))

(defun lunfardo-clojure-defaults ()
  (lunfardo-prog-defaults)
  (paredit-mode t))

(add-hook 'clojure-mode-hook 'lunfardo-clojure-defaults)

(provide 'lunfardo-clojure)
