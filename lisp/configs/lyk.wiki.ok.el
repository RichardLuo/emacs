(add-to-list 'load-path "/other/inst/wiki-2.72")
;;================================================================
;; emacs wiki mode
(require 'emacs-wiki)
(require 'emacs-wiki-menu)
;;(require 'emacs-wiki-srctag)

(defun emacs-wiki-preview-source ()
  (interactive)
  (emacs-wiki-publish-this-page)
  (find-file (emacs-wiki-published-file)))

(defun emacs-wiki-preview-html ()
  (interactive)
  (emacs-wiki-publish-this-page)
  (browse-url-generic (emacs-wiki-published-file)))

(add-hook 'emacs-wiki-mode-hook
          (lambda ()
            (define-key emacs-wiki-mode-map (kbd "C-c C-h") 'emacs-wiki-preview-html)
            (define-key emacs-wiki-mode-map (kbd "C-c C-c") 'emacs-wiki-preview-source)
            (define-key emacs-wiki-mode-map (kbd "C-c C-v") 'emacs-wiki-change-project)))

(setq emacs-wiki-directories '("~/WiKi"))

;;(setq emacs-wiki-meta-charset "gb2312")
;;(setq emacs-wiki-coding-default "gb2312")

(setq emacs-wiki-charset-default "gb2312")


(setq emacs-wiki-style-sheet "<link rel=\"stylesheet\" type=\"text/css\" href=\"core.css\">")
(setq emacs-wiki-inline-relative-to 'emacs-wiki-publishing-directory)

(setq emacs-wiki-projects
      `(("default" . ((emacs-wiki-directories . ("~/WiKi"))))
        ("work" . ((fill-column . 65)
                   (emacs-wiki-directories . ("~/workwiki/"))))))

(setq browse-url-generic-program "firefox")
