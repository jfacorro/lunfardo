;; LSP Client
(require 'lsp-mode)
(require 'company-lsp)
(push 'company-lsp company-backends)

(add-hook 'erlang-mode-hook #'lsp)
(setq lsp-log-io t)
(setq lsp-tcp-connection-timeout 1000)
;; (setq lsp-erlang-server-connection-type 'tcp)

(provide 'lunfardo-lsp)
