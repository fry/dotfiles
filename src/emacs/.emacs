(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
)

; enable vim mode
(require 'evil)
(evil-mode 1)

; try loading agda-mode if available
(let (agda (shell-command-to-string "ASDF=`agda-mode locate 2> /dev/null`; if test $ASDF; then e\|
cho '$ASDF'; fi")) (when agda (load-file (let ((coding-system-for-read 'utf-8)) agda))))

(define-key haskell-mode-map (kbd "C-x C-s") 'haskell-mode-save-buffer)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("124e34f6ea0bc8a50d3769b9f251f99947d6b4d9422c6d85dc4bcc9c2e51b39c" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
