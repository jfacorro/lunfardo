;; LSP Client
(require 'lsp-mode)
(require 'company-lsp)
(require 'helm-lsp)
(require 'lsp-origami)

(push 'company-lsp company-backends)

(add-hook 'erlang-mode-hook #'lsp)

(add-hook 'origami-mode-hook #'lsp-origami-mode)
(add-hook 'erlang-mode-hook #'origami-mode)

(setq lsp-log-io t)
(setq lsp-tcp-connection-timeout 500)
(setq lsp-enable-links t)
;; (setq lsp-erlang-server-connection-type 'stdio)

(provide 'lunfardo-lsp)
