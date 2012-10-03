;; (require 'scim-bridge)
;; (add-hook 'after-init-hook 'scim-mode-on)

(require 'scim-bridge-zh-si)
(add-hook 'after-init-hook 'scim-mode-on)

;; (require 'scim-bridge)
;; ;; Turn on scim-mode automatically after loading .emacs
;; (add-hook 'after-init-hook 'scim-mode-on)
;; Use C-SPC for Set Mark command
;; (scim-define-common-key ?\C-\s nil)
;; Use C-/ for Undo command
;; (scim-define-common-key ?\C-/ nil)
;; Change cursor color depending on SCIM status
;; (setq scim-cursor-color '("red" "blue" "limegreen"))
