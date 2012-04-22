(require 'wcy-swbuff)

;; then you can use <C-tab> and <C-S-kp-tab> to switch buffer.
(global-set-key (kbd "<C-tab>") 'wcy-switch-buffer-forward)
(global-set-key (kbd "<C-S-iso-lefttab>") 'wcy-switch-buffer-backward)


(setq wcy-switch-buffer-active-buffer-face  'highlight)
(setq wcy-switch-buffer-inactive-buffer-face  'secondary-selection )
