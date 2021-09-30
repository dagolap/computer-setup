;; Use tab rotation indentation for haskell
(add-hook 'haskell-mode-hook #'turn-on-haskell-indentation)

(add-hook 'haskell-mode-hook
          (lambda ()
            (set (make-local-variable 'company-backends)
                 (append '((company-capf company-dabbrev-code))
                         company-backends))))
