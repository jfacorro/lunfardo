(require 'lunfardo-programming)

(lunfardo-require-packages '(erlang))

(add-to-list 'auto-mode-alist '("\\.erl\\'" . erlang-mode))
(add-to-list 'auto-mode-alist '("\\.app.src\\'" . erlang-mode))
(add-to-list 'auto-mode-alist '("rebar\\.config\\'" . erlang-mode))

(setq erlang-indent-level 2)

(defun lunfardo-erlang-defaults ()
  (lunfardo-prog-defaults)
  ;;(aggressive-indent-mode t)
  )

(add-hook 'erlang-mode-hook 'lunfardo-erlang-defaults)

(setq erlang-inhibit-exported-function-name-face t)

(provide 'lunfardo-erlang)
