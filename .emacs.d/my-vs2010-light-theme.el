(deftheme my-vs2010-light
  "Created 2013-11-25.")

(custom-theme-set-faces
 'my-vs2010-light
 '(font-lock-type-face ((t (:foreground "#0000ff"))))
 '(font-lock-string-face ((t (:foreground "#A32121"))))
 '(font-lock-preprocessor-face ((t (:foreground "#0000FF"))))
 '(font-lock-comment-face ((t (:foreground "#008000"))))
 '(font-lock-keyword-face ((t (:foreground "#0000ff"))))
 '(font-lock-function-name-face ((t (:foreground "black"))))
 '(font-lock-variable-name-face ((t (:foreground "black"))))
 '(font-lock-constant-face ((t (:foreground "#0000ff"))))
 '(py-class-name-face ((t (:foreground "black"))))
 '(font-lock-builtin-face ((t (:foreground "black"))))
 '(py-exception-name-face ((t (:foreground "black"))))
 '(sh-quoted-exec ((t (:foreground "black"))))
 '(error ((t (:foreground "#ff0000"))))
 '(region ((t (:background "SkyBlue2" :foreground "black"))))
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 108 :width normal :foundry "unknown" :family "Ubuntu Mono")))))

(provide-theme 'my-vs2010-light)
