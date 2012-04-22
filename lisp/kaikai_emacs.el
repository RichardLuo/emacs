;; (setq inhibit-startup-message t)		;

;; (setq visible-bell t)

(display-time)

(setq default-tab-width 4) 

(column-number-mode t)

;; (show-paren-mode t)

(fset 'yes-or-no-p 'y-or-n-p)


(setq default-major-mode 'text-mode) 

;; (global-font-lock-mode t)

;; (create-fontset-from-fontset-spec
;; "-*-fixed-medium-r-*-*-16-*-*-*-c-*-fontset-chinese,
;; chinese-gb2312:-*-simsun-medium-r-*-*-14-*-*-*-c-*-gb2312.1980-*")
;; (set-default-font "fontset-chinese")


;; ;; (set-buffer-file-coding-system 'utf-8)
;; ;; (set-terminal-coding-system 'utf-8)
;; ;; (set-language-environment 'Chinese-GB)

;; Red Hat Linux default .emacs initialization file

;; Are we running XEmacs or Emacs?
(defvar running-xemacs (string-match "XEmacs\\|Lucid" emacs-version))

;; Set up the keyboard so the delete key on both the regular keyboard
;; and the keypad delete the character under the cursor and to the right
;; under X, instead of the default, backspace behavior.
(global-set-key [delete] 'delete-char)
(global-set-key [kp-delete] 'delete-char)

;; Turn on font-lock mode for Emacs
(cond ((not running-xemacs)
(global-font-lock-mode t)
))

;; Visual feedback on selections
(setq-default transient-mark-mode t)

;; Always end a file with a newline
(setq require-final-newline t)

;; Stop at the end of the file, not just add lines
(setq next-line-add-newlines nil)

;; Enable wheelmouse support by default
(cond (window-system
(mwheel-install)
))

;; show column number
;; ��ʾ�к�
(setq column-number-mode t)

;; no backup file
;; ��������ʱ�ļ�
(setq-default make-backup-files nil)

;; replace yes/no with y/n
;; ��y/n����yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;; disable pc bell
;; �ر�PC����
(setq visible-bell t)

;; kill the line wihle hit C-k
;; �����׻�C-kʱͬʱɾ������
(setq-default kill-whole-line t)

;; no startup screen
;; �ر���������
(setq inhibit-startup-message t)

;; show emacs@file at emacs title
;; �ڱ�������ʾ emacs@file
(setq frame-title-format "emacs@%b")

;; show another parentheses but jump to it.
;; ����Urlt Edit������,ֻ��ʾ��ʼ�ͽ�����,�����ѹ�������ô�
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; while cursor close to mouse, let mouse away
;; ������ƶ����������λ��,������Զ�����
(mouse-avoidance-mode 'animate)

;; set font message
;; ��������,����,λ�úʹ�С
;; if the window size and position is not correct as 
;; the configure file, please check .Xresources file
;; in your home directory.

(setq default-frame-alist 
'(
(top . 10)
(left . 20)
(height . 50)
(width . 80)
(cursor-type . bar)
(cursor-color . "white")
(font . "lucidasanstypewriter-14")
(background-color . "black")
))


;;lucidasanstypewriter-14

;;lucidasanstypewriter-bold-14

(frame-parameter nil 'font)

;; close menubar and tool
;; �رղ˵����͹�����
;; (menu-bar-mode nil)
;; (tool-bar-mode nil)

;; set time-stamp
;; ��¼�޸�ʱ��
;; (add-hook 'write-file-hooks 'time-stamp)
;; (setq time-stamp-format "%:u %02m/%02d/%04y %02H02M02S")

;; set hot-key
;; �����ȼ�

;; M-g ������:
(global-set-key "\M-g" 'goto-line)

;; M-o ��ʾ��ǰ�������йؼ����б�
;; list all the lines of the current buffer matching a regrep
(global-set-key "\M-o" 'occur)

;; M-q �ڵ�ǰĿ¼��ȫ�ֲ��ҹؼ���
;; reference or search in files.
(global-set-key "\M-q" 'grep-find)


(add-to-list 'load-path "/home/kaikai/emacs_conf/")
(require 'session)
(add-hook 'after-init-hook 'session-initialize)

(defun noorul/copy-word-to-clipboard ()
"Copies the word after the cursor into the clipboard."
  (interactive)
  (mark-word 1)
  (kill-ring-save (region-beginning) (region-end) )
)
(global-set-key (kbd "C-c C-j") 'noorul/copy-word-to-clipboard)



;;added here by luoyonkai, it's used to copy one line, but I dont know the key!
(defun noorul/copy-line-to-clipboard ()
"Copies the current line into the clipboard."
  (interactive)
  (let ((currpoint (point)))
    (beginning-of-line)
    (let ((beg (point))) 
      (end-of-line)
      (let ((end (point)))
	(copy-region-as-kill beg end)))
    (goto-char currpoint))
(global-set-key (kbd "C-c C-l") 'noorul/copy-word-to-clipboard)
