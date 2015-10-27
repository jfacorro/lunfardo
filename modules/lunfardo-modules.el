(require 'lunfardo-lisp)
(require 'lunfardo-erlang)
(require 'lunfardo-elixir)
(require 'lunfardo-ruby)
(require 'lunfardo-js)
(require 'lunfardo-cider)

(provide 'lunfardo-modules)

(add-to-list 'auto-mode-alist '("\\.dtl\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.scala\\'" . scala-mode))
