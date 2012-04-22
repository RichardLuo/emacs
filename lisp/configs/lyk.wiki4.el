(require 'emacs-wiki)
;; wiki
;; 安装 emacs wiki
(require 'emacs-wiki)
;; 配置快捷键
(defun wcy-emacs-wiki-mode-hook ()
  (auto-fill-mode 1)
  ;; 预览生成的结果
  (define-key emacs-wiki-mode-map (kbd "C-c C-h") 'emacs-wiki-preview-html)
  ;; 预览生成的 html 源代码
  (define-key emacs-wiki-mode-map (kbd "C-c C-c") 'emacs-wiki-preview-source)
  ;; 切换到其他的 project
  (define-key emacs-wiki-mode-map (kbd "C-c C-v") 'emacs-wiki-change-project)
  ;; 为当前文件生成 html
  (define-key emacs-wiki-mode-map (kbd "C-c p") 'emacs-wiki-publish-this-page)
  ;; 我自己添加的功能, 用于输入 < , 变成 &le; 等等.
  (define-key emacs-wiki-mode-map (kbd "C-c q") 'wcy-wiki-input-special-character)
  ;; 我不喜欢原来的 TAB 绑定到 emacs-wiki-next-reference
  (define-key emacs-wiki-mode-map (kbd "<tab>") 'indent-relative-maybe)
  ;; 原来的 <TAB> 功能,移动光标到下一个超连接上.
  (define-key emacs-wiki-mode-map (kbd "C-c <SPC>") 'emacs-wiki-next-reference)
  (define-key emacs-wiki-mode-map (kbd "C-c <DEL>") 'emacs-wiki-next-reference)
  ;; 我自己定义的为 region 添加 tag 的功能. 选择一块 region ,然后用 <sometag> ... </sometag>
  ;; 括起来
  (define-key emacs-wiki-mode-map (kbd "C-c C-,") 'wcy-wiki-add-tag))
;; 安装 hook

(add-hook 'emacs-wiki-mode-hook
          'wcy-emacs-wiki-mode-hook)


;; all wikis reside in the directories
;;(setq emacs-wiki-directories . ("~/workwiki/"))
;; 设置生成的 HTML 文件的编码方案. 防止乱码
(setq emacs-wiki-meta-charset "gb2312")
;; 为每一个文件配置 css 文件
(setq emacs-wiki-style-sheet "<link rel=\"stylesheet\" type=\"text/css\" href=\"core.css\">")
;;(setq emacs-wiki-inline-relative-to 'emacs-wiki-publishing-directory)
;; 起始文件是 index.html 而不是 WelcomePage.htm
(setq emacs-wiki-default-page  "Index")
;; 默认工程
(setq emacs-wiki-default-project "Default")
;; 默认的工作目录
(setq emacs-wiki-directories '("j:/chunywang/work/wiki.wiki" ,(home-directory "projects/homepage.wiki")))
;; 一个简单的函数,得到一个目录的所有子目录.
(defun wcy-wiki-get-all-subdirectory (root)
  (let ((files (directory-files root
                   t ; full name
                   "^[^.].*" ; exclude file name start with "."
                   nil ; sort
                   ))
        r file)
    (while files
      (setq file (car files)
            files (cdr files))
      (if (file-directory-p file)
          (setq r (append r (wcy-wiki-get-all-subdirectory file)))))
    (cons (expand-file-name (file-name-as-directory root)) r)))


;;设置多个工程
(setq emacs-wiki-projects
      `(
        ("Default" . ((fill-column . 80)
                      (emacs-wiki-publishing-directory . ,(home-directory "homepage.wikipublish"))
                      (emacs-wiki-directories .
                         ;;递归所有子目录, 都是工作目录
                         ,(wcy-wiki-get-all-subdirectory (home-directory "projects/homepage.wiki")))))

        ("Work" . ((fill-column . 80)
                   (emacs-wiki-publishing-directory . "j:/xxxx/work.publishwiki")
                   (emacs-wiki-directories . ("j:/xxxxx/work.wiki"))))))




(defun emacs-wiki-preview-source

(defun emacs-wiki-preview-source ()
  (interactive)
  (emacs-wiki-publish-this-page)
  (find-file (emacs-wiki-published-file)))

(defun emacs-wiki-preview-html ()
  (interactive)
  (emacs-wiki-publish-this-page)
  (browse-url (emacs-wiki-published-file)))

;; 在保存的时候自动发布
(defun sacha-emacs-wiki-auto-publish ()
  (when (and (derived-mode-p 'emacs-wiki-mode)
             (not emacs-wiki-publishing-p)
             (save-excursion
               (goto-char 1)
               (not (search-forward "<latex" nil t nil))))
    (let ((emacs-wiki-publishing-p t))
      (emacs-wiki-publish-this-page))))
(defun my-emacs-wiki-publish-index (file)
  (emacs-wiki-publish-index))

(add-hook 'emacs-wiki-mode-hook
  (lambda () (add-hook 'after-save-hook 'sacha-emacs-wiki-auto-publish nil t)))
(defun wcy-wiki-add-tag(&optional start end)
  (interactive "r")
  (let* ((tag (or (completing-read "Input a tag:"
                                   '(("src-c" )
                                     ("src-elisp" )
                                     ("src-scheme" )
                                     ("src-perl" )
                                     ("src-cpp" )
                                     ("example" )
                                     ("verbatim" )
                                     ("nowiki" )
                                     ("verse" )
                                     ("latex" )
                                     ("numbered" )
                                     ("nop" )
                                     ("contents" )
                                     ("c-source" )
                                     ("comment" )))
                  "example"))

      (c (if (and start end)
                (or (delete-and-extract-region start end) "")
              ""))
         (opentag (cdr (assoc tag '(("src-c" . "src type=\"c\"")
                               ("src-elisp" . "src type=\"elisp\"")
                               ("src-scheme" . "src type=\"scheme\"")
                               ("src-perl" . "src type=\"perl\"")
                               ("src-cpp" . "src types=\"cpp\"")))))
         (closetag (cdr (assoc tag '(("src-c" . "src")
                                     ("src-cpp" . "src")
                                     ("src-perl" . "src")
                                     ("src-elisp" . "src")
                                     ("src-scheme" . "src")
                                     ("nop" . ""))))))
    (insert "<" (or opentag tag) ">")
    (insert c)
    (save-excursion
      (insert "</" (or closetag tag) ">"))))

;;输入特殊字符
(defun wcy-wiki-input-special-character ()
  (interactive)
  (let* ((c (read-char "Character:"))
         (x (emacs-wiki-escape-html-string (string c))))
    (insert x)))
;; 可以实现给示例代码家颜色
(require 'htmlize)
(require 'emacs-wiki-srctag)
(setq htmlize-output-type 'css)
(add-to-list 'emacs-wiki-src-tag-modes-alist
             '( "makefile" . makefile-mode)
             '( "scheme" . scheme-mode))
