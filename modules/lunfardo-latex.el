;; Latex

;; Avoid displaying buffer when running command asynchronously
(add-to-list 'display-buffer-alist
             (cons "\\*Async Shell Command\\*.*" (cons #'display-buffer-no-window nil)))

(defun latex->pdf ()
  (message "Running make...")
  (async-shell-command "make"))

(defun latex-hook ()
  (setq fill-column 80)
  (add-hook 'after-save-hook 'latex->pdf nil 'local)
  (undo-tree-mode)
  (auto-fill-mode))

(add-hook 'latex-mode-hook 'latex-hook)

(provide 'lunfardo-latex)
