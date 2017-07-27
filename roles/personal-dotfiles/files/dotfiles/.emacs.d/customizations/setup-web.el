;; Javascript
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(add-hook 'js-mode-hook 'subword-mode)
(add-hook 'html-mode-hook 'subword-mode)
(setq js-indent-level 4)

;; Tagedit
(tagedit-add-paredit-like-keybindings)
(add-hook 'html-mode-hook #'tagedit-mode)
(add-hook 'web-mode-hook #'tagedit-mode)

;; HTML
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html.eex\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(eval-after-load "web-mode"
  '(progn
     (require 'tagedit)
     (tagedit-add-paredit-like-keybindings)
     (add-hook 'web-mode-hook (lambda () (tagedit-mode 1)))))

;; SCSS
;; Dont compile SCSS on save
(setq scss-compile-at-save nil)

;; Show HTML colors in editor for various modes
(require 'rainbow-mode)
(add-to-list 'rainbow-html-colors-major-mode-list 'scss-mode)
(add-to-list 'rainbow-html-colors-major-mode-list 'less-css-mode)
(add-to-list 'rainbow-html-colors-major-mode-list 'web-mode)
(add-hook 'web-mode-hook #'rainbow-mode)
(add-hook 'scss-mode-hook #'rainbow-mode)

;; Setup emmet
(add-hook 'html-mode-hook #'emmet-mode)
(add-hook 'web-mode-hook #'emmet-mode)
