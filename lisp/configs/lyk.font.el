;;设置字体Emacs23
(setq font-encoding-alist
     (cons '("gb2312.1980" . chinese-gbk) font-encoding-alist))
(create-fontset-from-fontset-spec
  "-*-Courier New-normal-r-*-*-14-*-*-*-c-*-fontset-chinese,
  chinese-gb2312:-outline-宋体-normal-r-normal-normal-*-*-96-96-p-*-gb2312.1980-0" t)
(setq default-frame-alist
    (append
    '((font . "fontset-chinese"))
     default-frame-alist))

