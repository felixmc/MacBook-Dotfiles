;; package management
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)


;; theme and fonts
(add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/"))
(load-theme 'gotham t)
(set-face-attribute 'default nil
                    :family "Ubuntu Mono"
                    :height 140
                    :weight 'normal
                    :width 'normal)


;; line nums
(global-linum-mode t)
(setq line-number-mode t)
(setq column-number-mode t)
(setq linum-format " %02d ")


;; tab width
(setq-default tab-width 2) 
(setq tab-width 2)
(setq c-default-style "linux" c-basic-offset 4)


;; hide toolbar and scrollbar
(tool-bar-mode -1)
(scroll-bar-mode -1)


;; make tab key do indent first then completion.
(setq-default tab-always-indent 'complete)


;; js setup
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))


