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
(require 'use-package)

;; now use it: http://ensime.org/editors/emacs/install/
(use-package ensime
  :ensure t
  :pin melpa-stable)

(use-package magit
  :ensure t)

(use-package ess
  :ensure t)

(use-package tex
  :ensure auctex)

(use-package markdown-mode
  :ensure t)

(use-package pandoc-mode
  :ensure t
  :init (add-hook 'markdown-mode-hook 'pandoc-mode))


;; set ipython as standard python shell
(setq python-shell-interpreter "ipython" python-shell-interpreter-args "--simple-prompt")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (markdown-mode pandoc-mode paqndoc-mode ensime use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
