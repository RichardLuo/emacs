(require 'magit)

;; (require 'git)
(global-set-key "\C-xgs" 'magit-status)

;; Disable Git, there is a bug that make it very slowly to open a file
;; from the indexed cscope buffer, it's very headche for me, I'd
;; rather sacrifice the vc of Git for cscope is too important for
;; me...
;; 2011-06-24 currently I need this feature
;; (setq vc-handled-backends
;;       (delete 'Git vc-handled-backends))
