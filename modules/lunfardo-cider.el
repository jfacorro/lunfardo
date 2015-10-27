(require 'lunfardo-programming)

(defun lunfardo-cider-defaults ()
  (define-key cider-mode-map (kbd "<C-return>") 'cider-eval-last-sexp)
  (define-key cider-mode-map (kbd "<C-M-return>") 'cider-eval-last-sexp-to-repl)
  (define-key cider-mode-map (kbd "<C-S-return>") 'cider-eval-buffer)
  (lunfardo-prog-defaults))

(add-hook 'cider-mode-hook 'lunfardo-cider-defaults)

(provide 'lunfardo-cider)
