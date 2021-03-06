;; ensime, general setup: http://ensime.org/editors/emacs/learning/
(setq
 package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                    ("org" . "http://orgmode.org/elpa/")
                    ("melpa" . "http://melpa.org/packages/")
                    ("melpa-stable" . "http://stable.melpa.org/packages/"))
 package-archive-priorities '(("melpa-stable" . 1)))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents)
  (package-install 'use-package))

;; use-package
(eval-when-compile
  (require 'use-package))
;;(require 'diminish)                ;; if you use :diminish
;;(require 'bind-key)                ;; if you use any :bind variant
;;(require 'use-package)

(use-package magit
  :ensure t)

(use-package ess
  :ensure t
  :init
  (defun my-ess-settings ()
    (setq ess-indent-with-fancy-comments nil))
  (add-hook 'ess-mode-hook 'my-ess-settings)
)
;;(require 'ess-jags-d)

(use-package stan-mode
  :ensure t)

(use-package tex
  :ensure auctex)

(use-package markdown-mode
  :ensure t)

(use-package pandoc-mode
  :ensure t
  :init (add-hook 'markdown-mode-hook 'pandoc-mode))

(use-package company
  :ensure t
  :config
  (global-company-mode t))

;; go get -u github.com/nsf/gocode
(use-package company-go
  :ensure t
  :commands company-go)    

(use-package go-mode
  :ensure t)

(use-package table
  :ensure t)


;; set ipython as standard python shell
(setq python-shell-interpreter "ipython" python-shell-interpreter-args "--simple-prompt")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(sql-indent yaml-mode ess markdown-mode pandoc-mode paqndoc-mode use-package))
 '(visible-bell t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)
