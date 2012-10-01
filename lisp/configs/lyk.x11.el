;;================================================================
;; X11 or PC using direct screen writes

(if window-system
    (progn

;;	  (add-to-list 'load-path "~/.libs.emacs/color_theme/")
	  (require 'color-theme)
      ;; (color-theme-initialize)
 	  (color-theme-blue-mood)
      (setq frame-title-format '("" "emacs\t\t%f" emacs))
	  (auto-image-file-mode)

;;;       (create-fontset-from-fontset-spec
;;;        (concat
;;;         "-misc-fixed-bold-r-normal-*-15-*-*-*-*-*-fontset-courier,"
;;;         "chinese-gb2312:-isas-fangsong ti-medium-r-normal--16-160-72-72-c-160-gb2312.1980-0," ;best
;;;         "mule-unicode-0100-24ff:-*-simsun-medium-r-*-*-18-*-*-*-c-*-iso10646*-*,"
;;;         ))
;;;       (setq default-frame-alist (append '((font . "fontset-courier")) default-frame-alist))

      (set-default-font "Monaco-12")
       (set-fontset-font "fontset-default"
                         'gb18030' ("Microsoft YaHei" . "unicode-bmp"))

;;      (set-default-font "fontset-courier")
;;      (set-default-font "YaHeiMono-12")

;;       ;; set the coding system.
;;       (set-language-environment 'Chinese-GB)
;;       (set-keyboard-coding-system 'chinese-iso-8bit)
;;       (set-terminal-coding-system 'chinese-iso-8bit)
;;       (set-buffer-file-coding-system 'chinese-iso-8bit)
;;       (set-clipboard-coding-system 'chinese-iso-8bit)
;;       (set-selection-coding-system 'chinese-iso-8bit)
;;       (setq-default pathname-coding-system 'chinese-iso-8bit)
;;       (modify-coding-system-alist 'process "*" 'chinese-iso-8bit)
;;       (setq default-process-coding-system '(chinese-iso-8bit . chinese-iso-8bit))


;;       (set-selection-coding-system 'iso-2022-8bit-ss2-dos)
;;       (set-clipboard-coding-system 'iso-2022-8bit-ss2-dos)

;;       ;; set the coding system.
;;       (set-language-environment 'Chinese-GB)
;;       (set-keyboard-coding-system 'cn-gb-2312)
;;       (set-clipboard-coding-system 'cn-gb-2312)
;;       (set-terminal-coding-system 'cn-gb-2312)
;;       (set-buffer-file-coding-system 'cn-gb-2312)
;;       (set-selection-coding-system 'cn-gb-2312)
;;       (modify-coding-system-alist 'process "*" 'cn-gb-2312)
;;       (setq default-process-coding-system '(cn-gb-2312 . cn-gb-2312))
;;       (setq-default pathname-coding-system 'cn-gb-2312)


;;       ;; Chinese environment settings.
;;       (set-language-environment 'Chinese-GB)
;;       ;;      (set-language-environment 'UTF-8)
;;       (set-keyboard-coding-system 'utf-8)
;;       (set-clipboard-coding-system 'utf-8)
;;       (set-terminal-coding-system 'utf-8)
;;       (set-buffer-file-coding-system 'utf-8)
;;       (set-selection-coding-system 'utf-8)
;;       (modify-coding-system-alist 'process "*" 'utf-8)
;;       (setq default-process-coding-system '(utf-8 . utf-8))
;;       (setq-default pathname-coding-system 'utf-8)

	  ))
