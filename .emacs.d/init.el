;;; ELPA (Emacs Package Manager)
(require 'package)
(package-initialize)
(add-to-list 'package-archives 
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives 
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-refresh-contents)

(defun install-if-needed (package)
  (unless (package-installed-p package)
    (package-install package)))

;; Install packages
(setq to-install
      '(f s magit yasnippet jedi auto-complete autopair flycheck dash-at-point find-file-in-repository exec-path-from-shell))
(mapc 'install-if-needed to-install)

(add-to-list 'load-path "~/.emacs.d/custom")

(load "00common-setup.el")
(load "01yasnippet.el")
(load "02auto-complete.el")
(load "03python-mode.el")
(load "04recentf.el")
(load "05ido-mode.el")
(load "06magit.el")

;; Themes
;;(load-theme 'my-vs2010-light t)
(load-theme 'my-generic-light t)
;;(load-theme 'my-generic-dark t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight-current-line-face ((t (:background "SlateGray1")))))

