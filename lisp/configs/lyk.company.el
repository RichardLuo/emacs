(add-to-list 'load-path "~/.libs.emacs/company")

(require 'company)
(autoload 'company-mode "company" nil t)

(dolist (hook (list
               'emacs-lisp-mode-hook
               'lisp-mode-hook
               'lisp-interaction-mode-hook
               'scheme-mode-hook
               'c-mode-common-hook
               'python-mode-hook
               'haskell-mode-hook
               'asm-mode-hook
               'emms-tag-editor-mode-hook
               'sh-mode-hook))
  (add-hook hook 'company-mode))


(add-hook 'c-mode-hook
          (lambda ()
            (setq semanticdb-default-save-directory "~/.emacs.d/semanticdb")   
            (semantic-load-enable-code-helpers)
            (setq company-idle-delay t)
            (company-mode)))