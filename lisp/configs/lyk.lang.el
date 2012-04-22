;; ;; set the coding system.
;; (set-language-environment 'Chinese-GB)
;; (set-keyboard-coding-system 'cn-gb-2312)
;; (set-terminal-coding-system 'cn-gb-2312)
;; (set-buffer-file-coding-system 'cn-gb-2312)
;; (set-clipboard-coding-system 'cn-gb-2312)
;; (set-selection-coding-system 'cn-gb-2312)
;; (setq-default pathname-coding-system 'cn-gb-2312)
;; (modify-coding-system-alist 'process "*" 'cn-gb-2312)
;; (setq default-process-coding-system '(cn-gb-2312 . cn-gb-2312))







 ;;emacs环境设置
;;整体环境设置
(set-language-environment 'Chinese-GB)
;;应该和输入有关系
(set-keyboard-coding-system 'chinese-iso-8bit-with-esc)
;;终端下emacs的中文设置？
(set-terminal-coding-system 'chinese-iso-8bit-with-esc)
;;文件保存时的编码设置
(set-buffer-file-coding-system 'chinese-iso-8bit-with-esc)
;;下面两天是emacs和其他程序互相复制／粘贴的设置
;;在帖3（hvj-basicconfig.el）的最后一行中也有相关的一个设定
(set-selection-coding-system 'chinese-iso-8bit-with-esc)
(set-clipboard-coding-system 'chinese-iso-8bit-with-esc)
;;什么设置？忘了？有些人没用下面这些
(modify-coding-system-alist 'process "*" 'chinese-iso-8bit-with-esc)
(setq default-process-coding-system '(chinese-iso-8bit-with-esc . chinese-iso-8bit-with-esc))
(setq-default pathname-coding-system 'chinese-iso-8bit-with-esc)

;; (set-clipboard-coding-system 'chinese-gbk)

;; ;;字体解码优先顺序
;; ;;从王垠那拷过来的，不用怎么再改吧。
;; (setq font-encoding-alist
;; (append '(("MuleTibetan-0" (tibetan . 0))
;; ("GB2312" (chinese-gb2312 . 0))
;; ("JISX0208" (japanese-jisx0208 . 0))
;; ("JISX0212" (japanese-jisx0212 . 0))
;; ("VISCII" (vietnamese-viscii-lower . 0))
;; ("KSC5601" (korean-ksc5601 . 0))
;; ("MuleArabic-0" (arabic-digit . 0))
;; ("MuleArabic-1" (arabic-1-column . 0))


;; ;中键粘贴
;; (setq mouse-yank-at-point t)
;; ;支持emacs和外部程序的粘贴 
;; (setq x-select-enable-clipboard t)
