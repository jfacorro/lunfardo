;; LSP Client
(require 'lsp-mode)
(require 'company-lsp)
(require 'helm-lsp)

(push 'company-lsp company-backends)

(add-hook 'erlang-mode-hook #'lsp)

(setq lsp-log-io t)
(setq lsp-tcp-connection-timeout 500)
;; (setq lsp-erlang-server-connection-type 'stdio)

(provide 'lunfardo-lsp)
