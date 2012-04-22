(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/muse/")

(require 'muse-mode)     ; load authoring mode
(require 'muse-html)     ; load publishing styles I use
(require 'muse-latex)
(require 'muse-texinfo)
(require 'muse-docbook)
(require 'muse-project)  ; publish files in projects
(require 'muse-context)

(require 'muse-colors nil t) ; load coloring/font-lock module


(setq muse-project-alist
      '(("website" ("~/.mydocs/pages" :default "index")
         (:base "html" :path "~/.mydocs/html")
         (:base "pdf" :path "~/.mydocs/html/pdf"))))




(defvar muse-context-tas-header
  "\\usemodule[taspresent][style=<lisp>(if (string-equal (muse-publishing-directive \"style\") nil) \"titleframe\"
(muse-publishing-directive \"style\"))</lisp>,font=Helvetica,size=17pt]
\\definetyping[code][bodyfont=small]
\\setvariables [taspresent]
              [author={<lisp>(muse-publishing-directive \"author\")</lisp>},
               title={<lisp>(muse-publishing-directive \"title\")</lisp>}]
\\starttext\n\\Maketitle\n\\page\n\\lecback\n"
  )

(defvar muse-context-tas-markup-strings
  (nconc
   '((section        . "\\Slidetitle  {")
     (begin-example  . "\\startcode")
     (end-example    . "\\stopcode")
     (comment-begin  . "\\startpagecomment\n")
     (comment-end    . "\n\\stoppagecomment")
     muse-context-markup-regexps)))

(muse-derive-style "tas" "context"
                   :header 'muse-context-tas-header
                   :strings 'muse-context-tas-markup-strings)

(muse-derive-style "tas-pdf" "context-pdf"
                   :header  'muse-context-tas-header
                   :strings 'muse-context-tas-markup-strings
                   )

(setq muse-publish-comments-p t)
