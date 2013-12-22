
(require 'autopair)
(require 'flymake)

;; Python mode settings
(add-to-list 'load-path "~/.emacs.d/python-mode-6.1.2-fix") 
(setq py-install-directory "~/.emacs.d/python-mode-6.1.2-fix")
(require 'python-mode)
(add-to-list 'auto-mode-alist '("\\.py$" . python-mode))
(setq py-electric-colon-active t)
(add-hook 'python-mode-hook 'autopair-mode)
(add-hook 'python-mode-hook 'yas-minor-mode)

;; ;; Jedi settings
(require 'jedi)
;; It's also required to run "pip install --user jedi" and "pip
;; install --user epc" to get the Python side of the library work
;; correctly.
;; With the same interpreter you're using.

;; if you need to change your python intepreter, if you want to change it
;; (setq jedi:server-command
;;       '("python2" "/home/andrea/.emacs.d/elpa/jedi-0.1.2/jediepcserver.py"))

(add-hook 'python-mode-hook
	  (lambda ()
	    (jedi:setup)
	    (jedi:ac-setup)
            (local-set-key "\C-cf" 'jedi:show-doc)
            (local-set-key (kbd "M--") 'jedi:complete)
            (local-set-key (kbd "M-.") 'jedi:goto-definition)))

;; Flymake settings for Python
(defun flymake-python-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
                     'flymake-create-temp-inplace))
         (local-file (file-relative-name
                      temp-file
                      (file-name-directory buffer-file-name))))
    (list "epylint" (list local-file))))

(defun flymake-activate ()
  "Activates flymake when real buffer and you have write access"
  (if (and
       (buffer-file-name)
       (file-writable-p buffer-file-name))
      (progn
        (flymake-mode t)
        ;; this is necessary since there is no flymake-mode-hook...
        (local-set-key (kbd "C-c n") 'flymake-goto-next-error)
        (local-set-key (kbd "C-c p") 'flymake-goto-prev-error))))

(defun ca-flymake-show-help ()
  (when (get-char-property (point) 'flymake-overlay)
    (let ((help (get-char-property (point) 'help-echo)))
      (if help (message "%s" help)))))

(add-hook 'post-command-hook 'ca-flymake-show-help)

(add-to-list 'flymake-allowed-file-name-masks
             '("\\.py\\'" flymake-python-init))

;; (add-hook 'python-mode-hook 'flymake-activate)

;; flycheck (https://pypi.python.org/pypi/flake8)
;;
;; You may need to run "pip install --user flake8" and 
;; add "~/.local/bin" to your PATH variable.
;; 
;; (e.g. append "export PATH=$PATH:~/.local/bin" to you .bashrc)
;; 
;; You may create  "~/.flake8rc" to control various settings:
;; 
;; [flake8]
;; ignore = E302,E303
;;
;;  (see also "M-x customize-group RET flycheck RET")
;;
(require 'flycheck)
(add-hook 'python-mode-hook (lambda ()
			      (flycheck-select-checker 'python-flake8)
			      (flycheck-mode)))
;;(add-hook 'after-init-hook #'global-flycheck-mode) 

(add-hook 'python-mode-hook 'auto-complete-mode)
