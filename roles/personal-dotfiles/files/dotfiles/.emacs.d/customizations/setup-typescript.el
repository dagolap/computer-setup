(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode t)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode t)
  (tide-hl-identifier-mode t)
  (company-mode t))

;; Aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; Formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)

;; Initialize on typescript-mode
(add-hook 'typescript-mode-hook #'setup-tide-mode)
