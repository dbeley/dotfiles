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
   '("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "065efdd71e6d1502877fd5621b984cded01717930639ded0e569e1724d058af8" "6daa09c8c2c68de3ff1b83694115231faa7e650fdbb668bc76275f0f2ce2a437" "d96587ec2c7bf278269b8ec2b800c7d9af9e22d816827639b332b0e613314dfd" "196df8815910c1a3422b5f7c1f45a72edfa851f6a1d672b7b727d9551bb7c7ba" "003a9aa9e4acb50001a006cfde61a6c3012d373c4763b48ceb9d523ceba66829" "d9dab332207600e49400d798ed05f38372ec32132b3f7d2ba697e59088021555" default))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(minions moody mu4e helpful cider clojure-mode simple-mpc mingus perspective perspective-el md4rd sublimity ess-site spaceline-all-the-icons all-the-icons smart-mode-line minimap sublimity-map sublimity-scroll twittering-mode flycheck smartparens emms esup counsel use-package ranger projectile ox-twbs ox-reveal org-plus-contrib org-bullets no-littering magit htmlize helm exwm-x evil-surround elpy company-quickhelp better-defaults base16-theme ace-window)))
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
