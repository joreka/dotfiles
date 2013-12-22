(deftheme my-generic-light
  "Created 2013-11-25.")

(custom-theme-set-faces
 'my-generic-light
 '(font-lock-builtin-face ((t (:foreground "#0072b2"))))
 '(font-lock-comment-face ((t (:foreground "#008000"))))
 '(font-lock-function-name-face ((t (:foreground "#00578E" :weight bold))))
 '(font-lock-keyword-face ((t (:foreground "DarkGoldenrod4" :weight bold))))
 '(font-lock-string-face ((t (:foreground "#204A87"))))
 '(font-lock-type-face ((t (:foreground "#2b91af" :weight bold))))
 '(font-lock-variable-name-face ((t (:foreground "sienna" :weight bold))))
 '(py-pseudo-keyword-face ((t (:foreground "MediumOrchid4" :weight bold))))
 '(sh-quoted-exec ((t (:foreground "black"))))
 '(sh-heredoc ((t (:foreground "red"))))
 '(py-decorators-face ((t (:foreground "gray25" :weight bold))))
 '(region ((t (:background "SteelBlue4" :foreground "white smoke"))))
 '(py-exception-name-face ((t (:inherit font-lock-type-face)))))

(provide-theme 'my-generic-light)
