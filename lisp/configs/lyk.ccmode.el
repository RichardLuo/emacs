(autoload 'senator-try-expand-semantic "senator")

;;--------------------------------------------------------------------
(setq hippie-expand-try-functions-list 
      '(
		senator-try-expand-semantic
        try-expand-dabbrev
        try-expand-dabbrev-visible
        try-expand-dabbrev-all-buffers
        try-expand-dabbrev-from-kill
        try-complete-file-name-partially
        try-complete-file-name
        try-expand-all-abbrevs
        try-expand-list
        try-expand-line
        try-complete-lisp-symbol-partially
        try-complete-lisp-symbol
        try-expand-whole-kill
        try-expand-line-all-buffers
        ))

(defun my-indent-or-complete ()
   (interactive)
   (if (looking-at "\\>")
 	  (hippie-expand nil)
     (indent-for-tab-command nil))
 )


(add-hook 'c++-mode-hook 'my-c-mode-common-hook)
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

(require 'cc-mode)
(c-set-offset 'inline-open 0)
(c-set-offset 'friend '-)
(c-set-offset 'substatement-open 0)

(defun my-c-mode-common-hook()
  (setq tab-width 4 indent-tabs-mode nil)
  (define-key c-mode-base-map [(control \`)] 'hs-toggle-hiding)
  (define-key c-mode-base-map [(return)] 'newline-and-indent)
  (define-key c-mode-base-map [(f5)] 'compile)
  (define-key c-mode-base-map [(meta \`)] 'c-indent-command)
  (define-key c-mode-base-map [(tab)] 'my-indent-or-complete)
  (define-key c-mode-base-map [(control c) (control d)] 'c-down-conditional-with-else)
  )

;; (define-key global-map (kbd "s-x") 'semantic-ia-complete-symbol-menu)
;; (setq c-macro-prompt-flag t)

;;================================================================
;;set c & c++ style as stroustrup style
;; (add-hook 'c++-mode-hook
;; 		  '(lambda()
;; 			 (c-set-style "stroustrup")))

;; (add-hook 'c-mode-hook
;; 		  '(lambda ()
;; 			 (c-set-style "stroustrup")))

;; (add-hook 'java-mode-hook
;; 		  '(lambda ()
;; 			 (c-set-style "stroustrup")))


(load "google-c-style.el" nil t t)
(add-hook 'c-mode-common-hook 'google-set-c-style)


