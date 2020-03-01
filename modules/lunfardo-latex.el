;; Latex

(defun latex->pdf ()
  (when (eq major-mode 'latex-mode)
    (message "Boom")))

;; This didn't seem to work
(add-hook 'latex-mode-hook
          (lambda ()
            (undo-tree-mode)
            (add-hook 'after-save-hook 'latex->pdf nil 'local)))

;;(add-hook 'after-save-hook 'latex->pdf)

(provide 'lunfardo-latex)
