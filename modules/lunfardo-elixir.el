(require 'lunfardo-programming)

;;(lunfardo-require-packages '(elixir))

(add-to-list 'auto-mode-alist '("\\.ex\\'" . elixir-mode))
(add-to-list 'auto-mode-alist '("\\.exs\\'" . elixir-mode))

(defun lunfardo-elixir-defaults ()
  (lunfardo-prog-defaults))

(add-hook 'erlang-mode-hook 'lunfardo-elixir-defaults)

(provide 'lunfardo-elixir)
