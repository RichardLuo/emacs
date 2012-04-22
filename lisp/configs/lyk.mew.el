(autoload 'mew "mew" nil t)
(autoload 'mew-send "mew" nil t)
(if (boundp 'read-mail-command)
    (setq read-mail-command 'mew))
(autoload 'mew-user-agent-compose "mew" nil t)
(if (boundp 'mail-user-agent)
    (setq mail-user-agent 'mew-user-agent))
(if (fboundp 'define-mail-user-agent)
    (define-mail-user-agent
       'mew-user-agent
       'mew-user-agent-compose
       'mew-draft-send-message
       'mew-draft-kill
       'mew-send-hook))
(setq mew-pop-size 0)
(setq mew-smtp-auth-list nil)
(setq toolbar-mail-reader 'Mew)
(set-default 'mew-decode-quoted 't)  
(setq mew-prog-pgp "gpg")
(setq mew-name "richard_luo")
(setq mew-user "richard_luo")
(setq mew-smtp-user "richard_luo")
(setq mew-mail-domain "alphanetworks.com")
(setq mew-smtp-auth-list nil)
;;(setq mew-smtp-server "SMTP主机")
(setq mew-smtp-server "172.19.3.32")
;;(setq mew-pop-server "POP主机")
(setq mew-pop-server "172.19.3.41")
(setq mew-pop-user "richard_luo")
(setq mew-pop-auth 'pass) ;;认证方式
(setq mew-use-cached-passwd t)
;;(setq mew-nntp-server "NNTP服务器")
;;(setq mew-icon-directory (expand-file-name "mew/etc" dtsite-dir))

(when (boundp 'utf-translate-cjk)
      (setq utf-translate-cjk t)
      (custom-set-variables
         '(utf-translate-cjk t)))
(if (fboundp 'utf-translate-cjk-mode)
    (utf-translate-cjk-mode 1)) 

;;(require 'flyspell) ;;非常好用的英文的拼写检查