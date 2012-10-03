(add-to-list 'load-path
             "~/.emacs.d/lisp/yasnippet")
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.emacs.d/lisp/profiles/snippets")

;; (yas/global-mode 1)
