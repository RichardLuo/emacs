;; (add-to-list 'load-path "/etc/emacs/site-start.d")
;; (add-to-list 'load-path "/usr/share/emacs/site-lisp/erlang")
;; (require 'erlang-start)


;; This is needed for Erlang mode setup
(setq erlang-root-dir "/usr/lib/erlang")
(setq load-path (cons "/usr/lib/erlang/lib/tools-2.6.6.5/emacs" load-path))
(setq exec-path (cons "/usr/lib/erlang/bin" exec-path))
(setq erlang-man-root-dir "/usr/lib/erlang/man")
(require 'erlang-start)

;; Load Distel stuff
(add-to-list 'load-path "~/.emacs.d/share/distel/share/distel/elisp")
(require 'distel)
(distel-setup)

;; Some Erlang customizations
(add-hook 'erlang-mode-hook
          (lambda ()
            ;; when starting an Erlang shell in Emacs, with the node
            ;; short name set to renzhi
            (setq inferior-erlang-machine-options '("-sname" "erlive"))
            ;; add Erlang functions to an imenu menu
            (imenu-add-to-menubar "imenu")))

;; A number of the erlang-extended-mode key bindings are useful in the
;; shell too
(defconst distel-shell-keys
  '(("\C-\M-i"   erl-complete)
    ("\M-?"      erl-complete)
    ("\M-."      erl-find-source-under-point)
    ("\M-,"      erl-find-source-unwind)
    ("\M-*"      erl-find-source-unwind)
    )
  "Additional keys to bind when in Erlang shell.")

(add-hook 'erlang-shell-mode-hook
          (lambda ()
            ;; add some Distel bindings to the Erlang shell
            (dolist (spec distel-shell-keys)
              (define-key erlang-shell-mode-map (car spec) (cadr spec)))))
