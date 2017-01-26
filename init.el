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
  (package-install 'use-package)
  (package-install 'ess)
  (package-install 'auctex))
(require 'use-package)

;; now use it: http://ensime.org/editors/emacs/install/
(use-package ensime
  :ensure t
  :pin melpa-stable)


;; set ipython as standard python shell
(setq python-shell-interpreter "ipython" python-shell-interpreter-args "--simple-prompt")
