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
(add-hook 'before-save-hook #'tide-format-before-save)

;; Initialize on typescript-mode
(add-hook 'typescript-mode-hook #'setup-tide-mode)

;; TSX Setup
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "tsx" (file-name-extension buffer-file-name))
              (setup-tide-mode))))
;; enable typescript-tslint checker
(flycheck-add-mode 'typescript-tslint 'web-mode)
