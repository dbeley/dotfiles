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
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(add-hook 'emacs-startup-hook
          (lambda ()
            (message "Emacs ready in %s with %d garbage collections."
                     (format "%.2f seconds"
                             (float-time
                              (time-subtract after-init-time before-init-time)))
                     gcs-done)))


(org-babel-load-file (expand-file-name "~/.emacs.d/conf.org"))
;;(org-babel-load-file (expand-file-name "~/.emacs.d/plugins.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("d96587ec2c7bf278269b8ec2b800c7d9af9e22d816827639b332b0e613314dfd" "196df8815910c1a3422b5f7c1f45a72edfa851f6a1d672b7b727d9551bb7c7ba" "003a9aa9e4acb50001a006cfde61a6c3012d373c4763b48ceb9d523ceba66829" "d9dab332207600e49400d798ed05f38372ec32132b3f7d2ba697e59088021555" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (flycheck smartparens telephone-line spaceline-config spaceline emms esup counsel use-package ranger projectile ox-twbs ox-reveal org-plus-contrib org-bullets no-littering magit htmlize helm exwm-x evil-surround elpy company-quickhelp better-defaults base16-theme airline-themes ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
