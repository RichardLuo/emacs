(let ((default-directory "~/.emacs.d/lisp/"))
  (setq load-path
        (append
         (let ((load-path (copy-sequence load-path))) ;; Shadow
           (append 
            (copy-sequence (normal-top-level-add-to-load-path '(".")))
            (normal-top-level-add-subdirs-to-load-path)))
         load-path)))

(load "lyk.misc.el")

(load "lyk.git.el")
(load "lyk.gud.el")
(load "lyk.ido.el")
(load "lyk.hooks.el")
(load "lyk.x11.el")
(load "lyk.lisp.el")
(load "lyk.java.el")

;; (load "lyk.tramp.el")
;; (load "lyk.outline.el")
;; (load "lyk.rectmark.el")
;; (load "lyk.python.el")
(load "lyk.android.el")
(load "lyk.coding.el")
(load "lyk.bm.el")
;; (load "lyk.bm_plus.el")
(load "lyk.org.el")

;; (load "lyk.semantic.el")
;; (load "lyk.company.el")

(load "lyk.erlang.el")
(load "lyk.yasnippet.el")
;; (load "lyk.muse.el")
;; (load "lyk.gnuserv.el")

;; (load "lyk.emms.el")
;; (load "lyk.color.el")
;; (my-color-theme)
;; (load "lyk.mew.el")
;; (load "lyk.wiki.el")
;; (load "lyk.dict.el")
;; (load "lyk.font.el")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "lyk.doxygen.el")
(load "lyk.cscope.el")
;;(load "lyk.css-mode.el")
;;(load "lyk.auctex.el")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(load "lyk.tempo.el")
(load "lyk.ccmode.el")
(load "lyk.eshell.el")
;; (load "lyk.lua.el")
;; (load "lyk.media_wiki.el")

;; (load "lyk.mmm.el")
;; (load "artist.el")
;; (load "lyk.xref.el")

;; ctrl-tab like vc
;; (load "lyk.swbuf.el")

;; (setq flowers '(rose hhh violet daisy buttercup))
;; (setq test-str (. lyk-cfg-path lyk-lib-path ))
;; (first '(lions tigers bears))
;; (rest '(lions tigers bears))
;; (load "auctex.el" nil t t)
;; (load "muse-autoloads.el"))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; for chrome browser
;; (require 'edit-server)
;; (edit-server-start)


(modify-syntax-entry ?\_ "w")
(setq compilation-scroll-output t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bm-buffer-persistence t)
 '(bm-highlight-style (quote bm-highlight-only-fringe))
 '(bm-repository-size 100000)
 '(bm-restore-repository-on-load t t)
 '(mediawiki-site-alist (quote (("X-Live" "https://github.com/RichardLuo/X-Live/wiki" "cdominant7@gmail.com" "" "Home")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; (require 'protobuf-mode)

(defalias 'perl-mode 'cperl-mode)

(defun my-makefile-mode-hook ()
  (define-key makefile-mode-map "\M-n" nil)
  (define-key makefile-mode-map "\M-p" nil))
(add-hook 'makefile-mode-hook 'my-makefile-mode-hook)
