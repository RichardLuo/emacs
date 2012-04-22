(require 'template)
(template-initialize)

(add-to-list 'template-find-file-commands 'ido-exit-minibuffer)

;; (dolist (cmd '(ido-select-text ido-magic-forward-char
;;                                ido-exit-minibuffer))
;;   (add-to-list 'template-find-file-commands cmd))