(require 'bm)
;; (require 'bm-ext)

;; (global-set-key (kbd "<C-f1>") 'bm-toggle)
(global-set-key (kbd "<C-tab>") 'bm-next)
(global-set-key (kbd "<C-S-iso-lefttab>") 'bm-previous)

(define-key global-map [(H o)] 'bm-toggle)
(global-set-key (kbd "H-SPC") 'bm-toggle)
;; (define-key global-map [(H n)] 'bm-next)
;; (define-key global-map [(H u)] 'bm-previous)

(define-key global-map [(H .)] 'bm-next)
(define-key global-map [(H ,)] 'bm-previous)

(define-key global-map [(H a)] 'bm-bookmark-annotate)
(define-key global-map [(H l)] 'bm-show-all)

(setq bm-repository-size 1000000)
(setq bm-bookmark-context-size 10000)
(setq bm-recenter nil)
(setq bm-cycle-all-buffers t)
;; (setq bm-annotate-on-create t)


;; ;; Enable ClearCase
;; (add-to-list 'vc-handled-backends 'CLEARCASE 'append)
;; (add-to-list 'vc-handled-backends 'GIT))
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(bm-buffer-persistence t)
 '(bm-highlight-style (quote bm-highlight-only-fringe))
 '(bm-restore-repository-on-load t)
 '(bm-repository-size 100000))

;; Loading the repository from file when on start up.
(add-hook' after-init-hook 'bm-repository-load)

;; Restoring bookmarks when on file find.
(add-hook 'find-file-hooks 'bm-buffer-restore)


;; Restoring bookmarks when on file find.
(add-hook 'find-file-hooks 'bm-buffer-restore)

;; Saving bookmark data on killing a buffer
(add-hook 'kill-buffer-hook 'bm-buffer-save)

;; Saving the repository to file when on exit.
;; kill-buffer-hook is not called when emacs is killed, so we
;; must save all bookmarks first.
(add-hook 'kill-emacs-hook '(lambda nil
                              (bm-buffer-save-all)
                              (bm-repository-save)))

;; Update bookmark repository when saving the file.
(add-hook 'after-save-hook 'bm-buffer-save)

;; Restore bookmarks when buffer is reverted.
(add-hook 'after-revert-hook 'bm-buffer-restore)




;;   (setq 
;;   (require 'bm)


