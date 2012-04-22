(add-to-list 'load-path "/usr/share/emacs/site-lisp/emms") ;;; emms目录
;; (add-to-list 'exec-path "/usr/bin/mplayer/") ;;;mplayer目录
(require 'emms-setup)
(emms-devel)

;; players
(setq emms-player-mpg321-command-name "mpg321"
      emms-player-mplayer-command-name "mplayer"
      emms-player-list '(emms-player-mplayer
                         emms-player-mplayer-playlist
                         emms-player-ogg123
                         emms-player-mpg321))

;; Show the current track each time EMMS
;; starts to play a track with "播放 : "
(add-hook 'emms-player-started-hook 'emms-show)
(setq emms-show-format "播放: %s")

;; When asked for emms-play-directory,
;; always start from this 默认的播放目录
(setq emms-source-file-default-directory "/home/richard/Videos/ubvv")
(setq emms-playlist-buffer-name "音乐")

;;;emms快捷键设置
(global-set-key (kbd "C-c e l") 'emms-playlist-mode-go)
(global-set-key (kbd "C-c e s") 'emms-start)
(global-set-key (kbd "C-c e e") 'emms-stop)
(global-set-key (kbd "C-c e n") 'emms-next)
(global-set-key (kbd "C-c e p") 'emms-pause)
(global-set-key (kbd "C-c e f") 'emms-play-playlist)
(global-set-key (kbd "C-c e o") 'emms-play-file)
(global-set-key (kbd "C-c e d") 'emms-play-directory-tree)
(global-set-key (kbd "C-c e a") 'emms-add-directory-tree)
(add-to-list 'load-path "/usr/share/emacs/site-lisp") ;;
