;; BASE packages
(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)

;; key bindings
(require 'evil)
(evil-mode 1)

(when (eq system-type 'darwin) ;; mac specific settings
  (setq mac-option-modifier 'meta)
  (global-set-key [kp-delete] 'delete-char) ;; sets fn-delete to be right-delete
  )

(setq visible-bell 1)

;; GUI config
(custom-set-variables
 '(display-time-mode t)
 '(package-selected-packages (quote (darkokai-theme evil-visual-mark-mode)))
 '(tool-bar-mode nil))

(custom-set-faces)

;; themes and visual stuff
(add-to-list 'load-path "~/.emacs.d/vendor/emacs-powerline")
(require 'powerline)

(load-theme 'darkokai t)

