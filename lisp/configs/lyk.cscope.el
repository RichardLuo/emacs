(require 'xcscope)

;; told emacs do not update database evey time.
(setq cscope-do-not-update-database t)
(setq cscope-use-relative-paths t)

(define-key global-map [(s b)] 'cscope-display-buffer) ;s show
(define-key global-map [(s s)] 'cscope-find-this-symbol) ;C-c s s
(define-key global-map [(s p)] 'cscope-pop-mark)       ;p pop
(define-key global-map [(s d)] 'cscope-find-global-definition)
(define-key global-map [(s e)] 'cscope-find-egrep-pattern)
(define-key global-map [(s j)] 'cscope-find-global-definition-no-prompting)
(define-key global-map [(s i)] 'cscope-index-files)
(define-key global-map [(s I)] 'cscope-set-initial-directory)
(define-key global-map [(s P)] 'cscope-prev-symbol)
(define-key global-map [(s N)] 'cscope-next-symbol)
(define-key global-map [(s f)] 'cscope-find-this-file)
(define-key global-map [(s c)] 'cscope-find-functions-calling-this-function)


;; (define-key global-map [(control f3)]  'cscope-set-initial-directory)
;; (define-key global-map [(control f4)]  'cscope-unset-initial-directory)
;; (define-key global-map [(control f5)]  'cscope-find-this-symbol)
;; (define-key global-map [(control f6)]  'cscope-find-global-definition)
;; (define-key global-map [(control f7)]  'cscope-find-global-definition-no-prompting)
;; (define-key global-map [(control f8)]  'cscope-pop-mark)
;; (define-key global-map [(control f9)]  'cscope-next-symbol)
;; (define-key global-map [(control f10)] 'cscope-next-file)
;; (define-key global-map [(control f11)] 'cscope-prev-symbol)

;; (define-key global-map [(control f12)] 'cscope-prev-file)
;; (define-key global-map [(meta f9)]  'cscope-display-buffer)
;; (define-key global-map [(meta f10)] 'cscope-display-buffer-toggle)
