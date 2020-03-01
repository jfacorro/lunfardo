(require 'lunfardo-cider)
(require 'lunfardo-clojure)
(require 'lunfardo-erlang)
(require 'lunfardo-elixir)
(require 'lunfardo-js)
(require 'lunfardo-latex)
(require 'lunfardo-lisp)
(require 'lunfardo-ruby)

(provide 'lunfardo-modules)

(add-to-list 'auto-mode-alist '("\\.dtl\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.scala\\'" . scala-mode))
