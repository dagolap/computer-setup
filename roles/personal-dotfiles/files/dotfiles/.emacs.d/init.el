;;;;
;; Packages
;;;;

;; Define package repositories
(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")
                         ("melpa-stable" . "https://stable.melpa.org/packages/")
                         ;; ("marmalade" . "https://marmalade-repo.org/packages/")
))
;; If a package exists in the repo with highest priority, use that.
(setq package-archive-priorities '(("melpa" . 20)
                                   ("melpa-stable" . 10)
                                   ("gnu" . 0)))

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
    solarized-theme                 ; Solarized color theme
    atom-one-dark-theme             ; One Dark Theme from Atom Editor
    monokai-theme                   ; Monokai theme (Same as Sublime, TextMate etc.)
    which-key                       ; Key completion helper
    flycheck                        ; Linter / Syntax checker for 40+ languages
    rainbow-mode                    ; Colorize color codes in buffers
    ace-window                      ; Jump between windows
    avy                             ; Jump in files
    ;; HTML
    tagedit                         ; Manipulate tags like sexps
    emmet-mode                      ; Emmet / Zen-coding style
    web-mode                        ; Web development mode
    ;; CSS
    scss-mode
    less-css-mode
    ;; Javascript
    js2-mode
    ;; Python
    anaconda-mode
    company-anaconda
    ;; Haskell
    haskell-mode
    ;; Erlang og eliksir
    erlang
    elixir-mode
    elixir-yasnippets
    alchemist
    ;; Elm
    elm-mode
    ;; Typescript
    tide
    ;; Golang
    go-mode
    flymake-go
    company-go
    ;; General data file formats
    json-mode
    yaml-mode
    markdown-mode
    ;; Clojure
    ; clojure-mode                    ; keybindings and syntax highlighting
    ; clojure-mode-extra-font-locking ; extra syntax highlighting for clojure
    ; cider                           ; repl integration
    ;; Racket
    racket-mode
    ;; Nix
    nix-mode
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

;; Language-specific
;; (load "setup-clojure.el")
(load "setup-lisps.el")
(load "setup-web.el")
(load "setup-haskell.el")
(load "setup-typescript.el")
(load "setup-elixir.el")
(load "setup-golang.el")
(load "setup-python.el")

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
    (company-anaconda anaconda-mode company-go flymake-go go-mode ace-window avy alchemist which-key yaml-mode tagedit scss-mode rainbow-delimiters projectile paredit neotree material-theme magit less-css-mode json-mode js2-mode haskel-mode erlang emmet-mode elm-mode elixir-yasnippets elixir-mode counsel company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
