

;;(add-to-list 'load-path "~/.libs.emacs/eieio")
;; (add-to-list 'load-path "/data/inst/emacs-plugins/doxyemacs/share/emacs/site-lisp")
(require 'doxymacs)
;;(require 'doxymacs-extended)

(defun my-doxymacs-font-lock-hook ()
  (if (or (eq major-mode 'c-mode) (eq major-mode 'c++-mode))
      (doxymacs-font-lock)))
(add-hook 'font-lock-mode-hook 'my-doxymacs-font-lock-hook)

;; Heartbeat and Register project.
(setq doxymacs-doxygen-dirs
      '(("^/home/richard/ProgrammingTest/HnR/"
         "/home/richard/ProgrammingTest/HnR/hnr.xml"
         "file:///home/richard/ProgrammingTest/HnR/doc/")))



(add-hook 'c-mode-common-hook'doxymacs-mode)
(add-hook 'c++-mode-common-hook'doxymacs-mode)