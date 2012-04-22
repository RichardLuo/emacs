;;================================================================
;; xml mode hook.

;; (defun my-activate-sgml () (load "~/.libs.emacs/nxml-mode-20040908/rng-auto.el"))
;; (add-hook 'c-mode-hook 'my-activate-sgml)
;; (setq auto-mode-alist
;; 	  (cons '("\\.\\(xml\\|xsl\\|rng\\|xhtml\\)\\'" . nxml-mode)
;; 			auto-mode-alist))

;; (defun my-c-mode-hook ()
;;   (require 'ctypes)
;;   (turn-on-font-lock))
;; (add-hook 'c-mode-hook 'my-c-mode-hook)
;; (add-hook 'c++-mode-hook 'my-c-mode-hook)

;;================================================================
(add-hook 'c-mode-hook (lambda () (modify-syntax-entry ?_ "w" c-mode-syntax-table)))
(add-hook 'c++-mode-hook (lambda () (modify-syntax-entry ?_ "w" c++-mode-syntax-table)))

(setq auto-mode-alist
	  (append '(("\\.h$" . c++-mode)) auto-mode-alist))

;; (load "~/.libs.emacs/nxml-mode-20040908/rng-auto.el")
(setq auto-mode-alist
      (union '(("\\.html$" . html-mode)
			   ("\\.shtml$" . html-mode)
			   ("\\.xml$" . nxml-mode)
			   ("\\.xsl$" . nxml-mode)
			   ("\\.xmap$" . nxml-mode)
			   ("\\.xhtml$" . nxml-mode)			   
			   ("\\.inl$" . c++-mode)			   
			  ) auto-mode-alist))


;; (require 'ctypes)
;; (ctypes-auto-parse-mode 1)

;; (add-hook 'c-mode-hook
;;           (lambda ()
;;             (unless (or (file-exists-p "makefile")
;;                         (file-exists-p "Makefile"))
;;               (set (make-local-variable 'compile-command)
;;                    (concat "make "
;;                            (file-name-sans-extension buffer-file-name))))))

(add-hook 'c-mode-hook
          (lambda ()
            (unless (or (file-exists-p "makefile")
                        (file-exists-p "Makefile"))
              (set (make-local-variable 'compile-command)
                   (concat "make "
                           )))))

(add-hook 'c++-mode-hook
          (lambda ()
            (unless (or (file-exists-p "makefile")
                        (file-exists-p "Makefile"))
              (set (make-local-variable 'compile-command)
                   (concat "make "
                           )))))


