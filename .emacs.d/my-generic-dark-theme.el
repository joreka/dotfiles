(deftheme my-generic-dark
  "Created 2013-11-25.")

(custom-theme-set-faces
 'my-generic-dark
 '(font-lock-comment-face ((t (:foreground "#00a000"))))
 '(font-lock-keyword-face ((t (:foreground "Gold3" :weight bold))))
 '(font-lock-string-face ((t (:foreground "#406Ab7"))))
 '(font-lock-builtin-face ((t (:foreground "DarkCyan"))))
 '(py-pseudo-keyword-face ((t (:foreground "MediumOrchid4" :weight bold))))
 '(font-lock-variable-name-face ((t (:foreground "sienna" :weight bold))))
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 100 :width normal :foundry "unknown" :family "Monospace"))))
 '(font-lock-type-face ((t (:foreground "#2b91af" :weight bold))))
 '(py-decorators-face ((t (:foreground "dark gray" :weight bold))))
 '(py-exception-name-face ((t (:inherit font-lock-type-face))))
 '(font-lock-function-name-face ((t (:foreground "#00578E" :weight bold))))
 '(sh-quoted-exec ((t (:foreground "white"))))
 '(sh-heredoc-face ((t (:foreground "red3")))))

(provide-theme 'my-generic-dark)
