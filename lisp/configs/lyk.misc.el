;; (add-to-list 'load-path "~/.libs.emacs/eieio")
;; (add-to-list 'load-path "~/.libs.emacs/speedbar/")
;; (add-to-list 'load-path "~/.libs.emacs/semantic/")
;; (require 'ecb)

(setq default-tab-width 4) 

;; Visual feedback on selections
(setq-default transient-mark-mode t)

;; Always end a file with a newline
;;(setq require-final-newline nil)

;; Stop at the end of the file, not just add lines
(setq next-line-add-newlines nil)

;; show column number
(setq column-number-mode t)

;; no backup file
;;(setq-default make-backup-files nil)
(setq make-backup-files nil) 


;; replace yes/no with y/n
(fset 'yes-or-no-p 'y-or-n-p)

;; disable pc bell
(setq visible-bell t)

;; no startup screen
(setq inhibit-startup-message t)

;; show another parentheses but jump to it.
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; ;; while cursor close to mouse, let mouse away
;; ('mouse-avoidance-mode 'animate)

(menu-bar-mode nil)
(tool-bar-mode nil)

(scroll-bar-mode t)

;; ;; set time-stamp
;; (add-hook 'write-file-hooks 'time-stamp)
;; (setq time-stamp-format "%:u %02m/%02d/%04y %02H02M02S")

(global-set-key "\M-g" 'goto-line)

;; list all the lines of the current buffer matching a regrep
(global-set-key "\M-o" 'occur)

;; reference or search in files.
(global-set-key (kbd "C-M-z") 'grep-find)

(setq adaptive-fill-regexp "[ \t]+\\|[ \t]*\\([0-9]+\\.\\|\\*+\\)[ \t]*")

;; password displayed as *
(add-hook 'comint-output-filter-funtions
		  'comint-watch-for-password-promt)

; Fontlock mode settings.
(global-font-lock-mode t)

(setq font-lock-maximum-decoration t)

;;================================================================
;; settings of cvs
(setq cvs-dired-use-hook 'always) 
(define-key global-map "\C-xve" 'cvs-examine)

;;================================================================
;; Rebind C-z to start a shell (use .emacs_shellname for the shells rc file)
;;(global-set-key "\C-z" 'shell)

;; This binds word completions to Shift-Tab, and Ctrl+Space
;;(global-set-key [S-iso-lefttab] 'dabbrev-completion)

;; Set up some f-key shortcuts
(global-set-key [S-f1]  'man)
;; (global-set-key [f1] 'other-window)
(global-set-key [f2]    'save-buffer)
;; (global-set-key [f3]    'save-buffer)
(global-set-key [f4]    'kill-this-buffer)
(define-key global-map [(H r)]  'rename-buffer)
(define-key global-map [(H t)]  'revert-buffer)
;; (define-key global-map [(s o)]  'other-window)


;;================================================================
;;compile key binding.
(global-set-key [f5]    'compile)
(global-set-key [f6]    'first-error)
(global-set-key [f7]    'previous-error)
(global-set-key [f8]    'next-error)

;;-------------------------------------------------------------------------
(global-set-key "%" 'match-paren)
(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
	((looking-at "\\s\)") (forward-char 1) (backward-list 1))
	(t (self-insert-command (or arg 1)))))

;;----------------------------------------------------------------------
(defun wy-go-to-char (n char)
  "Move forward to Nth occurence of CHAR.
Typing `wy-go-to-char-key' again will move forwad to the next Nth
occurence of CHAR."
  (interactive "p\ncGo to char: ")
  (search-forward (string char) nil nil n)
  (while (char-equal (read-char)
		     char)
    (search-forward (string char) nil nil n))
  (setq unread-command-events (list last-input-event)))
;;(define-key global-map (kbd "C-c n") 'wy-go-to-char)
(global-set-key (kbd "C-c n") 'wy-go-to-char)

;;hide region
(require 'hide-region)
(global-set-key (kbd "C-c r") 'hide-region-hide)
(global-set-key (kbd "C-c R") 'hide-region-unhide)

;; hide lines
(require 'hide-lines)
(global-set-key (kbd "C-c l") 'hide-lines)
(global-set-key (kbd "C-c L") 'show-all-invisible)


;;-------------------------------------------------------------------------
(defun ska-point-to-register()
  "Store cursorposition _fast_ in a register. 
Use ska-jump-to-register to jump back to the stored 
position."
  (interactive)
  (setq zmacs-region-stays t)
  (point-to-register 8)
  (message "Position saved:%s" (get-register 8))
  )

(defun ska-jump-to-mark()
  "Jump the the previous marked point and save the current
position to register 7"
  (interactive)
  (point-to-register 7)
  (jump-to-register 8)
  (message "called ska-jump-to-mark");
)

(defun ska-jump-back-from-mark()
  "Jump back from the marked position"
  (interactive)
  (jump-to-register 7)
  (message "called ska-jump-back-from-mark");
)

(defun ska-jump-to-register()
  "Switches between current cursorposition and position
that was stored with ska-point-to-register."
  (interactive)
  (setq zmacs-region-stays t)
  (let (
        (old (get-register 8))
        (cur (point-marker))
        )
    (message "==== old is:%s" old)
    (message "1 cur is:[%s] old is:[%s]" cur old)
    (if (not (equal cur old))
        (ska-jump-to-mark)
        (ska-jump-back-from-mark)
      )
    )
  )
(global-set-key [(control ?\.)] 'ska-point-to-register)
(global-set-key [(control ?\,)] 'ska-jump-to-register)

;;================================================================
(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(require 'browse-kill-ring)
(global-set-key [(control c)(k)] 'browse-kill-ring)
(browse-kill-ring-default-keybindings)


;============================================================
;; gcm scroll
(defun gcm-scroll-down ()
  (interactive)
  (scroll-up 1))

(defun gcm-scroll-up ()
  (interactive)
  (scroll-down 1))

;; (global-set-key [(control down)] 'gcm-scroll-down)
;; (global-set-key [(control up)]   'gcm-scroll-up)

(global-set-key [(control \()] 'gcm-scroll-down)
(global-set-key [(control \))] 'gcm-scroll-up)

;;================================================================
;; sfp page scroll
(defun sfp-page-down ()
  (interactive)
  (next-line
   (- (window-text-height)
	  next-screen-context-lines)))
    
(defun sfp-page-up ()
  (interactive)
  (previous-line
   (- (window-text-height)
	  next-screen-context-lines)))
    
(global-set-key "\M-n"  (lambda () (interactive) (scroll-up   8)) )
(global-set-key "\M-p"  (lambda () (interactive) (scroll-down 8)) )


(setq-default indent-tabs-mode nil)



;;================================================================
(add-hook 'eshell-mode-hook 
          (lambda () 
            (local-set-key [home] 'eshell-backward-argument)))

(add-hook  
 'eshell-first-time-mode-hook 
 (lambda () 
   (setq  
    eshell-visual-commands  
    (append 
     '("mutt" "vim" "screen" "lftp" "ipython" "telnet") 
     eshell-visual-commands))))
;;================================================================


;;--------------------------------------------------------------------
(require 'recentf)
(recentf-mode 1)

;;--------------------------------------------------------------------
(defun recentf-open-files-compl ()
  (interactive)
  (let* ((all-files recentf-list)
	 (tocpl (mapcar (function 
			 (lambda (x) (cons (file-name-nondirectory x) x))) all-files))
	 (prompt (append '("File name: ") tocpl))
	 (fname (completing-read (car prompt) (cdr prompt) nil nil)))
    (find-file (cdr (assoc-ignore-representation fname tocpl))))) 
(global-set-key [(control x)(control r)] 'recentf-open-files-compl)


(setq dired-recursive-deletes t)
(setq dired-recursive-copies t)
(require 'dired-x)
(setq dired-guess-shell-alist-user
      (list
       (list "\\.chm$" "xchm")
       (list "\\.rm$" "gmplayer")
       (list "\\.rmvb$" "gmplayer")
       (list "\\.avi$" "gmplayer")
       (list "\\.asf$" "gmplayer")
       (list "\\.wmv$" "gmplayer")
       (list "\\.htm$" "w3m")
       (list "\\.html$" "w3m")
       (list "\\.mpg$" "gmplayer")
	   ))


;; ;;--------------------------------------------------------------------
;; (autoload 'mmm-mode "mmm-mode" "Multiple Major Modes" t)
;; (autoload 'mmm-parse-buffer "mmm-mode" "Automatic MMM-ification" t)


;; (add-to-list 'auto-mode-alist '("\\.\\([pP][Llm]\\|al\\)\\'" . cperl-mode))
;; (add-to-list 'interpreter-mode-alist '("perl" . cperl-mode))
;; (add-to-list 'interpreter-mode-alist '("perl5" . cperl-mode))
;; (add-to-list 'interpreter-mode-alist '("miniperl" . cperl-mode))
;; (defalias 'perl-mode 'cperl-mode)


;; ;;================================================================
;; (require 'pc-bufsw "/usr/EmacsPak/pc-bufsw.el")
;; ;;(pc-bufsw::bind-keys [C-tab] [C-S-tab])
;; (pc-bufsw::bind-keys [C-tab] [C-S-iso-lefttab])
;; ;;(pc-bufsw::bind-keys [f12] [f11])



;; ;;--------------------------------------------------------------------------------
;; (add-hook 'comint-output-filter-functions
;; 		  'comint-watch-for-password-prompts)

;;================================================================
;; ansi color, Good!!
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;; ;;================================================================
;; ;; tramp, to resolve sudo problem.
;; (add-to-list 'load-path "~/.libs.emacs/tramp/lisp/")
;; (require 'tramp)
;; (add-to-list 'Info-default-directory-list "~/.libs.emacs/tramp/info/")

;; (setq tramp-default-method "ssh")


;;================================================================
;; ansi color, Good!!
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(require 'fvwm-mode)
(require 'psvn)

;; ------------------------------------------------------------
;; omit file types
(setq dired-omit-files
     (concat dired-omit-files "\\|\\.tst\\|^\\..+$\\|\\.vcproj$\\|\\.vcp$\\|\\.bor$\\|\\.vcw$\\|\\.sln$\\|\\.dsp$"))
(setq dired-omit-files
     (concat dired-omit-files "\\|\\.d$\\|\\.mpb$\\|\\.mwc$\\|\\.mpc$\\|\\.out$\\|\\.png$\\|\\.graph$\\|.org$\\|.bak$"))
(setq dired-omit-files
      (concat dired-omit-files "\\|cscope\\.\\|\\.mp3$\\|CVS$\\|\\.tgz$\\|\\.tar$\\|\\.so$\\|\\.a$\\|\\.cdepn$"))
(setq dired-omit-files
      (concat dired-omit-files "\\|\\.dsw$\\|TAGS$\\|^GNUmakefile\\.\\w+\\|^lib\\w+\\.so\\|^Makefile\\.\\|^semantic\\.cache"))
(setq dired-omit-files
      (concat dired-omit-files "\\|\\.mod\\.c$\\|\\.ko$\\|\\.symvers$"))
(setq dired-omit-files
      (concat dired-omit-files "\\|\\.log$\\|\\.dvi$\\|\\.x86$\\|\\.arm$\\|\\.vrb$\\|\\.snm$\\|\\.nav$"))

;; paste at the point, not the position of mouse
(setq mouse-yank-at-point t)

;; ;; when do increase search this will cause bug: if the searched value occurried at the first line.
;; (setq scroll-margin 3
;;       scroll-conservatively 10000)

;; ;;-------------------------------------------------------------------------
;; (require 'tabbar)
;; (tabbar-mode)
;; (define-key global-map [(H-up)] 'tabbar-backward-group)
;; (define-key global-map [(H-down)] 'tabbar-forward-group)
;; (define-key global-map [(H-left)] 'tabbar-backward)
;; (define-key global-map [(H-right)] 'tabbar-forward)

;; ;;-------------------------------------------------------------------------
;; (require 'swbuff)
;; (global-set-key [C-S-iso-lefttab] 'swbuff-switch-to-previous-buffer)
;; (global-set-key [C-tab] 'swbuff-switch-to-next-buffer)
;; (setq swbuff-exclude-buffer-regexps 
;; 	  '("^ " "\\*.*\\*"))
;; (setq swbuff-status-window-layout 'scroll)
;; (setq swbuff-clear-delay 2)
;; (setq swbuff-separator "|")
;; (setq swbuff-window-min-text-height 1)
;; (autoload 'table-insert "table" "WYGIWYS table editor")

(setq-default nuke-trailing-whitespace-p t)  

(add-to-list 'auto-mode-alist '("\\.hla\\'" . asm-mode))

;; (define-key global-map [(s f)]  'find-grep-dired)
;; ;;(setq compilation-directory "/other/CTC-IPCam/trunk/apps/video_server")

(setq kill-ring-max 200)

(setq default-major-mode 'text-mode)


(setq version-control t)
(setq kept-new-versions 3)
(setq delete-old-versions t)
(setq kept-old-versions 2)
(setq dired-kept-versions 1)

(setq user-full-name "Richard Luo")
(setq user-mail-address "cdominant7@gmail.com")
(setq gud-tooltip-mouse-motions-active nil)

(setq grep-find-command
      "emcgrep | xargs -0e grep -nHE \"\"")


;; (setq grep-find-command
;;       "find -iregex '.*\\.\\(cpp\\|c\\|s\\|sh\\|java\\|xml\\|h\\|hpp\\|inl\\)$' -print0 | xargs -0e grep -nHE ")

;; (setq grep-find-command
;;       "emc_grep ")




;;(setq doxymacs-doxygen-style "C++")
(require 'gas-mode)

(setq x-select-enable-clipboard t)


(define-key global-map [(control f12)] 'org-agenda-open-link)
