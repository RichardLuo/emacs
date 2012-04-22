;;--------------------------------------------------------------------------------
;;(global-set-key [f10] 'ejecuta-instruccion)
(global-set-key [f10] 'gud-next)
(global-set-key [H-f10] 'gud-cont)
(global-set-key [f12] 'gud-down)
(global-set-key [f24] 'gud-up)
(global-set-key [H-f12] 'gud-up)
(global-set-key [f11] 'gud-step)

(global-set-key [f23] 'gud-finish) 
(global-set-key [S-f11] 'gud-finish) 
(global-set-key [H-f11] 'gud-finish)

(global-set-key [f9] 'gud-break) 

(global-set-key [f21] 'gud-remove) ;; shift + f9
(global-set-key [H-f9] 'gud-break)
(global-set-key [S-f9] 'gud-remove) ;; shift + f9
;;--------------------------------------------------------------------------------