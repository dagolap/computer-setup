;; These customizations make it easier for you to navigate files,
;; switch buffers, and choose options from the minibuffer.

;; "When several buffers visit identically-named files,
;; Emacs must give the buffers distinct names. The usual method
;; for making buffer names unique adds ‘<2>’, ‘<3>’, etc. to the end
;; of the buffer names (all but one of them).
;; The forward naming method includes part of the file's directory
;; name at the beginning of the buffer name
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Uniquify.html
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; Turn on recent file mode so that you can more easily switch to
;; recently edited files when you first start emacs
(setq recentf-save-file (concat user-emacs-directory ".recentf"))
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 40)

;; Shows a list of buffers
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Open neotree in projectile base folder
(defun neotree-project-dir ()
    "Open NeoTree using the project root."
    (interactive)
    (let ((project-dir (projectile-project-root))
          (file-name (buffer-file-name)))
      (neotree-toggle)
      (if project-dir
          (if (neo-global--window-exists-p)
              (progn
                (neotree-dir project-dir)
                (neotree-find file-name)))
        (message "Could not find project root."))))

(global-set-key [f8] 'neotree-project-dir)

;; Keybindings for ace-window
(require 'ace-window)
(global-set-key (kbd "M-p") 'ace-window)

(require 'avy)
(global-set-key (kbd "C-.") 'avy-goto-word-or-subword-1)

