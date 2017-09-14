(add-hook 'go-mode-hook
          (lambda ()
            (setq tab-width 2 indent-tabs-mode 1)
            (local-set-key (kbd "M-.") 'godef-jump)
            (add-hook 'before-save-hook 'gofmt-before-save)))
