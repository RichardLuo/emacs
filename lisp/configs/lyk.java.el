;; (require 'javadoc-help)
;; (autoload 'javadoc-lookup       "javadoc-help" "Look up Java class in Javadoc."   t)
;; (autoload 'javadoc-help         "javadoc-help" "Open up the Javadoc-help menu."   t)
;; (autoload 'javadoc-set-predefined-urls  "javadoc-help" "Set pre-defined urls."    t)
;; (global-set-key [(f1)]          'javadoc-lookup) ; F1 to lookup
;; (global-set-key [(shift f1)]    'javadoc-help) ; Shift-F1 to bring up menu

(defun my-java-mode-hook ()
  (lambda () (modify-syntax-entry ?_ "w" c++-mode-syntax-table)))
(add-hook 'java-mode-hook 'my-java-mode-hook)

