;; Latex

;; Avoid displaying buffer when running command asynchronously
(add-to-list 'display-buffer-alist
             (cons "\\*Async Shell Command\\*.*" (cons #'display-buffer-no-window nil)))

(defun latex->pdf ()
  (async-shell-command "make"))

(defun latex-hook ()
  (undo-tree-mode)
  (add-hook 'after-save-hook 'latex->pdf nil 'local))

(add-hook 'latex-mode-hook 'latex-hook)

(provide 'lunfardo-latex)
