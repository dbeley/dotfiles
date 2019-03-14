;; garbage collection settings
(setq gc-cons-threshold 402653184
      gc-cons-percentage 0.6)

(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
 
(setq package-archive-priorities
      '(("org"          . 200)
        ("melpa"        . 150)
        ("melpa-stable" . 100)
        ))

(setq package-enable-at-startup nil)
;;(package-initialize)
(unless package--initialized (package-initialize t))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/conf.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("cbd8e65d2452dfaed789f79c92d230aa8bdf413601b261dbb1291fb88605110c" default))
 '(inhibit-startup-screen t)
 '(org-structure-template-alist
   '(("a" . "export ascii")
     ("c" . "center")
     ("C" . "comment")
     ("e" . "example")
     ("E" . "export")
     ("h" . "export html")
     ("l" . "export latex")
     ("q" . "quote")
     ("s" . "src")
     ("v" . "verse")))
 '(package-selected-packages
   '(pdf-tools ace-link org-noter ggtags eyebrowse telephone-line yasnippet-snippets xresources-theme which-key use-package symon spaceline smartparens smart-mode-line-atom-one-dark-theme simple-mpc ranger rainbow-mode ox-twbs ox-reveal ox-hugo org-preview-html org-plus-contrib org-bullets notmuch no-littering moody minions magic-latex-buffer ivy-rich htmlize helpful helm-projectile fzf flycheck exwm evil-surround evil-org evil-magit evil-leader evil-collection ess eshell-git-prompt elpy elfeed-org elfeed-goodies dumb-jump dashboard counsel company-shell company-quickhelp company-box better-defaults base16-theme auctex all-the-icons-ivy ace-window)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(eshell-git-prompt-powerline-dir-face ((t (:background "gray18"))))
 '(helm-M-x-key ((t (:foreground "white" :underline t))))
 '(helm-match ((t (:foreground "white"))))
 '(hl-line ((t (:background "gray30"))))
 '(minimap-active-region-background ((((background dark)) (:background "#2A2A2A222222")) (t (:background "#D3D3D3222222"))) nil :group)
 '(spaceline-evil-insert ((t (:background "dark slate grey" :foreground "black"))))
 '(spaceline-evil-normal ((t (:background "dim grey" :foreground "black"))))
 '(spaceline-evil-replace ((t (:background "dark gray" :foreground "black"))))
 '(spaceline-evil-visual ((t (:background "indian red" :foreground "black")))))
;; reset garbage collection settings and display startup time
(add-hook 'emacs-startup-hook
          (lambda ()
            (message "Emacs ready in %s with %d garbage collections."
                     (format "%.2f seconds"
                             (float-time
                              (time-subtract after-init-time before-init-time)))
                     gcs-done))
           (setq gc-cons-threshold 16777216
                 gc-cons-percentage 0.1))
