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
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(helpful cider clojure-mode simple-mpc mingus perspective perspective-el md4rd sublimity ess-site spaceline-all-the-icons all-the-icons smart-mode-line minimap sublimity-map sublimity-scroll twittering-mode flycheck smartparens emms esup counsel use-package ranger projectile ox-twbs ox-reveal org-plus-contrib org-bullets no-littering magit htmlize helm exwm-x evil-surround elpy company-quickhelp better-defaults base16-theme ace-window)))

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
