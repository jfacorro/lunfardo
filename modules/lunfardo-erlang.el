(require 'lunfardo-programming)

(lunfardo-require-packages '(erlang))

(add-to-list 'auto-mode-alist '("\\.erl\\'" . erlang-mode))
(add-to-list 'auto-mode-alist '("\\.app.src\\'" . erlang-mode))
(add-to-list 'auto-mode-alist '("rebar\\.config\\'" . erlang-mode))

(setq erlang-indent-level 2)

(defun lunfardo-erlang-defaults ()
  (lunfardo-prog-defaults))

(add-hook 'erlang-mode-hook 'lunfardo-erlang-defaults)

(setq erlang-inhibit-exported-function-name-face t)

(defun add-erlang-align-commas ()
  (add-to-list 'align-rules-list
             '(erlang-align-commas
               (regexp . ",\\(\\s-+\\)")
               (repeat . t)
               (modes quote (erlang-mode)))))

(add-hook 'align-load-hook 'add-erlang-align-commas)

(provide 'lunfardo-erlang)
