;;; #init-ivy.el
;;; Commentary:
;;; http://oremacs.com/swiper/#installation
;;; https://sam217pa.github.io/2016/08/30/how-to-make-your-own-spacemacs/#fnref:3
;;; https://writequit.org/denver-emacs/presentations/2017-04-11-ivy.html#fnr.2
;;; Code:

(require 'use-package)

;; some problem with this config: https://dev.to/deciduously/how-i-emacs-and-so-can-you-packages-m9p
;; (use-package ivy
;;              :ensure t
;; 	     :diminish (ivy-mode)
;; 	     :bind(("C-x b" . ivy-switch-buffer))
;; 	     :config
;; 	     (ivy-mode 1)
;; 	     (setq ivy-use-virtual-buffers t)
;; 	     (setq ivy-height 20)
;; 	     (setq ivy-count-format "%d/%d ")
;; 	     (setq ivy-display-style 'fancy))

;; (use-package counsel
;; 	     :bind* ; load when pressed
;; 	     (("M-x" . counsel-M-x)
;; 	      ("C-s" . swiper)
;; 	      ("C-x C-f" . counsel-find-file)
;; 	      ("C-x C-r" . counsel-recentf) ; search for recently edit
;; 	      ("C-c g" . counsel-git) ; search for files in git repo
;; 	      ("C-c j" . counsel-git-repo); search for regexp in git repo
;; 	      ("C-c /" . counsel-ag); use ag for regexp
;; 	      ("C-x C-f" . counsel-find-file)
;; 	      ("<f1> f" . counsel-describe-function)
;; 	      ("<f1> v" . counsel-describe-variable)
;; 	      ("<f1> l" . counsel-find-library)
;; 	      ("<f2> i" . counsel-info-lookup-symbol)
;; 	      ("<f2> u" . counsel-unicode-char)
;; 	      ("C-c C-r" . ivy-resume))) ; resume last Ivy-based completion

(use-package counsel
  :ensure t
  :bind
  (("M-y" . counsel-yank-pop)
   :map ivy-minibuffer-map
   ("M-y" . ivy-next-line)))

(use-package ivy
  :ensure t
  :diminish (ivy-mode)
  :bind (("C-x b" . ivy-switch-buffer))
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "%d/%d ")
  (setq ivy-display-style 'fancy))

(use-package swiper
  :ensure t
  :bind (("C-s" . swiper-isearch)
	 ("C-r" . swiper-isearch)
	 ("C-c C-r" . ivy-resume)
	 ("M-x" . counsel-M-x)
	 ("C-x C-f" . counsel-find-file))
  :config
  (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq ivy-display-style 'fancy)
    (define-key read-expression-map (kbd "C-r") 'counsel-expression-history)
    ))
	 

 
(provide 'init-ivy)
