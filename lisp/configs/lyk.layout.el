(require 'layout-restore)
;; save layout key
(global-set-key [?\C-c ?l] 'layout-save-current)
;; load layout key
(global-set-key [?\C-c ?\C-l ?\C-l] 'layout-restore)
;; cancel(delete) layout key
(global-set-key [?\C-c ?\C-l ?\C-c] 'layout-delete-current)