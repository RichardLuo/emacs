;; it's for xemacs!!!
;; (require 'xgtags)

;; If you hope gtags-mode is on in c-mode then please add c-mode-hook to your
;; $HOME/.emacs like this.
;;


;; need further study!!
;; (setq gtags-mode-hook
;;   '(lambda ()
;;         (define-key gtags-mode-map "\eh" 'gtags-display-browser)
;;         (define-key gtags-mode-map "\C-]" 'gtags-find-tag-from-here)
;;         (define-key gtags-mode-map "\C-t" 'gtags-pop-stack)
;;         (define-key gtags-mode-map "\el" 'gtags-find-file)
;;         (define-key gtags-mode-map "\eg" 'gtags-find-with-grep)
;;         (define-key gtags-mode-map "\eI" 'gtags-find-with-idutils)
;;         (define-key gtags-mode-map "\es" 'gtags-find-symbol)
;;         (define-key gtags-mode-map "\er" 'gtags-find-rtag)
;;         (define-key gtags-mode-map "\et" 'gtags-find-tag)
;;         (define-key gtags-mode-map "\ev" 'gtags-visit-rootdir)
;; ))
;; (setq c-mode-hook
;;       '(lambda ()
;;          (gtags-mode 1)
;;          ))

;; (setq current-language-environment "UTF-8")
;; (setq default-input-method "chinese-py")
;; (setq locale-coding-system 'utf-8)
;; (set-terminal-coding-system 'utf-8)
;; (set-keyboard-coding-system 'utf-8)
;; (set-selection-coding-system 'utf-8)
;; (prefer-coding-system 'utf-8)
