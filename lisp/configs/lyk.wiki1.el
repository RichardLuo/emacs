;;; -----------------------------------------------
;;; Emacs Wiki
;;; See
;;;     http://members.iinet.net.au/~mtriggs/emacs-wiki.html
;;; -----------------------------------------------
(require 'emacs-wiki)
(require 'emacs-wiki-menu)
(add-hook 'emacs-wiki-mode-hook
          (lambda ()
            (define-key emacs-wiki-mode-map
              (kbd "C-c C-h") 'emacs-wiki-preview-html)
            (define-key emacs-wiki-mode-map
              (kbd "C-c C-c") 'emacs-wiki-preview-source)
            (define-key emacs-wiki-mode-map
              (kbd "C-c C-v") 'emacs-wiki-change-project)
            (define-key emacs-wiki-mode-map
              (kbd "C-x C-s") (lambda ()
                                (interactive)
                                (save-buffer)
                                (emacs-wiki-publish-files
                                 (list buffer-file-name) nil)
                                ))))

(setq emacs-wiki-use-mode-flags "0644")
(setq emacs-wiki-maintainer "mailto:name@some.where.net")
(setq emacs-wiki-charset-default "gbk")
(setq emacs-wiki-style-sheet "<link rel=\"stylesheet\" href=\"main.css\" media=\"screen\">")
(setq emacs-wiki-inline-relative-to 'emacs-wiki-publishing-directory)

(defun emacs-wiki-preview-source ()
  (interactive)
  (emacs-wiki-publish-this-page)
  (find-file (emacs-wiki-published-file)))

(defun emacs-wiki-preview-html ()
  (interactive)
  (emacs-wiki-publish-this-page)
  (let ((file-name (emacs-wiki-published-file)))
    (if (string-match "/ftp:user_name.*/\\(\\w+\\.html\\)"
                      file-name)
        (browse-url (concat
                     "http://wiki.page.server.net/~user_name/"
                     (match-string 1 file-name)))
      (browse-url (file-name)))))


(setq emacs-wiki-projects
      `(("default" . ((fill-column . 4000)
                      (emacs-wiki-publishing-directory . "~/Wiki")
                      (emacs-wiki-directories . ("~/Wiki"))))
        ("work" . ((fill-column . 4000)
                    (emacs-wiki-publishing-directory
                     .
                     "/ftp:user_name@wiki.page.server.net:/public_html")
                    (emacs-wiki-directories . ("~/Wiki"))))
        ))

(setq browse-url-generic-program "firefox")