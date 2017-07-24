;;;;
;; Packages
;;;;

;; Define package repositories
(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://stable.melpa.org/packages/")
;;                         ("marmalade" . "https://marmalade-repo.org/packages/")
))

;; packages are loaded before you start trying to modify them.
;; This also sets the load path.
(package-initialize)

;; Download the package archive description if needed.
;; This informs Emacs about the latest versions of all packages, and
;; makes them available for download.
(when (not package-archive-contents)
  (package-refresh-contents))

;; The packages you want installed. You can also install these
;; manually with M-x package-install
;; Add in your own as you wish:
(defvar my-packages
  '(
    ;; General emacs stuff
    ivy                             ; completion framework for commands etc.
    counsel                         ; ivy-mode for a lot more commands (everything using completing-read-function)
    swiper                          ; isearch alternative that uses ivy
    paredit                         ; Allows manipulation of lisp expressions
    projectile                      ; Allows project navigation based on project files (.git etc.)
    company                         ; Auto completion framework for use with syntax completion etc.
    rainbow-delimiters              ; Colorful parenthesis matching
    yasnippet                       ; Snippet insertion framework
    neotree                         ; File browser similar to nerdtree for vim
    magit                           ; Git integration (diffs, blame, modes for rebasing etc)
    material-theme                  ; Based on Googles Material Design
    which-key                       ; Key completion helper
    flycheck                        ; Linter / Syntax checker for 40+ languages
    ;; HTML
    tagedit                         ; Manipulate tags like sexps
    emmet-mode                      ; Emmet / Zen-coding style
    web-mode                        ; Web development mode
    ;; CSS
    scss-mode
    less-css-mode
    ;; Javascript
    js2-mode
    ;; Haskell
    haskell-mode
    ;; Erlang og eliksir
    erlang
    elixir-mode
    elixir-yasnippets
    ;; Elm
    elm-mode
    ;; General data file formats
    json-mode
    yaml-mode
    ;; Clojure
    ; clojure-mode                    ; keybindings and syntax highlighting
    ; clojure-mode-extra-font-locking ; extra syntax highlighting for clojure
    ; cider                           ; repl integration
    ))

;; On OS X, an Emacs instance started from the graphical user
;; interface will have a different environment than a shell in a
;; terminal window, because OS X does not run a shell during the
;; login. Obviously this will lead to unexpected results when
;; calling external utilities like make from Emacs.
;; This library works around this problem by copying important
;; environment variables from the user's shell.
;; https://github.com/purcell/exec-path-from-shell
;; (if (eq system-type 'darwin)
;;     (add-to-list 'my-packages 'exec-path-from-shell))

;; Install all missing packages
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))


;; Place downloaded elisp files in ~/.emacs.d/vendor. You'll then be able
;; to load them.
(add-to-list 'load-path "~/.emacs.d/vendor")


;;;;
;; Customization
;;;;

;; Add a directory to our load path so that when you `load` things
;; below, Emacs knows where to look for the corresponding file.
(add-to-list 'load-path "~/.emacs.d/customizations")

;; Sets up exec-path-from-shell so that Emacs will use the correct
;; environment variables
;; (load "shell-integration.el")

;; These customizations make it easier for you to navigate files,
;; switch buffers, and choose options from the minibuffer.
(load "navigation.el")

;; These customizations change the way emacs looks and disable/enable
;; some user interface elements
(load "ui.el")

;; These customizations make editing a bit nicer.
(load "editing.el")

;; Hard-to-categorize customizations
(load "misc.el")

;; For editing lisps
(load "elisp-editing.el")

;; Language-specific
;; (load "setup-clojure.el")
(load "setup-js.el")

;; UTF-8 everything!
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Add my custom binary path
(add-to-list 'exec-path "~/bin")

;; Start company mode for all kinds of fun
(add-hook 'after-init-hook 'global-company-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-tab-width 2)
 '(package-selected-packages
   (quote
    (which-key yaml-mode tagedit scss-mode rainbow-delimiters projectile paredit neotree material-theme magit less-css-mode json-mode js2-mode haskell-mode erlang emmet-mode elm-mode elixir-yasnippets elixir-mode counsel company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
