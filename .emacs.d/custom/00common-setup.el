;; Set the starting position and width and height of Emacs Window
(add-to-list 'default-frame-alist '(left . 0))
(add-to-list 'default-frame-alist '(top . 0))
(add-to-list 'default-frame-alist '(height . 45))
(add-to-list 'default-frame-alist '(width . 175))

;; Do not show startup message
(setq inhibit-startup-message t)    

;; y/n instead of yes/no
(defalias 'yes-or-no-p 'y-or-n-p)              

;; Prefer utf-8 encoding
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Windmove bindings, Use shift + arrow keys to move around windows
(windmove-default-keybindings 'shift) 

;; Do not use tabs for indentation
(setq-default indent-tabs-mode nil)

;; Toolbar off
(tool-bar-mode -1) 

;; Show time
(setq display-time-day-and-date t)  
(setq display-time-24hr-format t)   
(display-time)                      

;; Enable copy and pasting from clipboard
(setq x-select-enable-clipboard t)

;; Do not use tabs for indentation
(setq-default indent-tabs-mode nil)

;; Highlight incremental search
(setq search-highlight t)

;; Invert selected area
(transient-mark-mode t)

(show-paren-mode t)                   ; Show matching parenthesis
(setq line-number-mode t)             ; Show line
(setq column-number-mode t)           ; Show columns
(mouse-wheel-mode t)                  ; Enable mouse wheel scrolling
(setq visible-bell nil)               ; Turn beep off

; Enable backup files.
(setq make-backup-files t)

;; Save all backup file in this directory.
(setq backup-directory-alist (quote (("." . "~/.emacs.backups/"))))

;; Decoration
(global-font-lock-mode t)                     
(setq font-lock-maximum-decoration t)         

;; Language (Swedish) 
(set-language-environment "Latin-1") 
(set-terminal-coding-system 'latin-1)

;; Scrollbar right
(setq scroll-bar-mode-explicit t)
(set-scroll-bar-mode 'right)

;; key bindings
(when (eq system-type 'darwin) ;; mac specific settings
  (setq mac-option-modifier nil)
  (setq mac-command-modifier 'meta)
  (global-set-key [kp-delete] 'delete-char) ;; sets fn-delete to be right-delete
  )

(when (eq system-type 'darwin) ;; mac specific settings
  (require 'dash-at-point)
  (global-set-key "\C-cd" 'dash-at-point)
  )

(when (memq window-system '(mac ns))
  (require 'exec-path-from-shell) 
  (exec-path-from-shell-initialize)
  ;;(exec-path-from-shell-copy-env "PYTHONPATH")
  )
