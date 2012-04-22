;;; This file contains small pieces of list code to test PmWiki mode

;;; Set URL
(set 'pmwiki-page-url
     "http://www.pmichaud.com/wiki/EmacsModes/PmWikiModeTestPage?action")

;;; Open various pages
(pmichaud-pmwiki-browse "EmacsModes" "PmWikiMode")
(pmichaud-pmwiki-browse "EmacsModes" "TestColors")



;;;
;;; Following links
;;;
(pmichaud-pmwiki-browse "EmacsModes" "WikiSandbox")
;; Open sandbox to play in.
;; Things to test:
;; * Add text and save, C-c C-c.
;; * Follow a link to an existing page, C-c C-g
;;	- Test both local link (e.g. HomePage) and full links
;;	  e.g. Main/HomePage and Main.HomePage
;; * Create new link and follow it


;;;
;;; pmwiki-open-url()
;;;
(pmwiki-open-url "http://www.pmichaud.com/wiki/EmacsModes/WikiSandbox")
;; Opens EmacsModes.WikiSandbox
;; * Make a change and save, C-c C-c

;;;
;;; pmwiki-open()
;;;

;;;
;;; pmichaud-pmwiki-browse()
;;;
(pmichaud-pmwiki-browse "EmacsModes" "WikiSandbox")
;; Loads sandbox from www.pmichaud.com
;; * Make some change, C-c C-c and verify in browser that it worked.


;;;
;;; lyx-wiki-browse()
;;;
(lyx-wiki-browse "Test" "WikiSandbox")
;; Loads sandbox from wiki.lyx.org
;; * Make some change, C-c C-c and verify in browser that it worked.


;;;
;;; pmwiki-loc()
;;;
(defun test-pmwiki-loc (url)
  "Test function for `pmwiki-loc'."
  (interactive "sURL: ")
  (let ((pmwiki-page-url url))
    (message (format "\n\nTesting with `pmwiki-page-url'\n\t%s"
		     pmwiki-page-url))
    (message (format "(pmwiki-loc 1):\t\t%s" (pmwiki-loc 1)))
    (message (format "(pmwiki-loc 2):\t\t%s" (pmwiki-loc 2)))
    (message (format "(pmwiki-loc 3):\t\t%s" (pmwiki-loc 3)))
    (message (format "(pmwiki-loc 'base): \t%s"  (pmwiki-loc 'base)))
    (message (format "(pmwiki-loc 'group): \t%s" (pmwiki-loc 'group)))
    (message (format "(pmwiki-loc 'page): \t%s"  (pmwiki-loc 'page)))
    (message (format "(pmwiki-loc 'name): \t%s"  (pmwiki-loc 'name)))
    (message (format "(pmwiki-loc 'link): %s"
		     (pmwiki-link-to-name (pmwiki-loc 'link)))))
  (message (format "\nTesting with argument:\n\t%s" url))
  (message (format "(pmwiki-loc 1 url):\t%s" (pmwiki-loc 1 url)))
  (message (format "(pmwiki-loc 2 url):\t%s" (pmwiki-loc 2 url)))
  (message (format "(pmwiki-loc 3 url):\t%s" (pmwiki-loc 3 url)))
  (message (format "(pmwiki-loc 'base url):\t%s"  (pmwiki-loc 'base url)))
  (message (format "(pmwiki-loc 'group url):%s" (pmwiki-loc 'group url)))
  (message (format "(pmwiki-loc 'page url):\t%s"  (pmwiki-loc 'page url)))
  (message (format "(pmwiki-loc 'name url):\t%s"  (pmwiki-loc 'name url)))
  (message (format "(pmwiki-loc 'link):\t%s"
		   (pmwiki-link-to-name (pmwiki-loc 'link url)))))

(test-pmwiki-loc "http://www.pmichaud.com/wiki/Modes/PageName")
(test-pmwiki-loc
 "http://www.pmichaud.com/wiki/EmacsModes/PmWikiModeTestPage?action")
(test-pmwiki-loc "http://wiki.lyx.org/pmwiki.php/Modes/Page")
(test-pmwiki-loc "http://wiki.lyx.org/pmwiki.php/Modes/Page-with-dashes")

(set 'pmwiki-FreeLinkPattern
     (concat "{{\\(\\([A-Za-z][A-Za-z0-9]*"
	  "\\(?:\\(?:[	 _]*\\|-\\)[A-Za-z0-9]+\\)*\\)"
	  "\\(?:|\\(\\(?:\\(?:[ 	_]*\\|-\\)[A-Za-z0-9]\\)*\\)\\)?\\)}}"
	  "\\(\\(?:-?[A-Za-z0-9]+\\)*\\)"))
(defun a ()
  ""
  (interactive)
  (re-search-forward pmwiki-FreeLinkPattern))

;;;
;;; pmwiki-name-to-link()
;;;
(defun test-pmwiki-name-to-link (s) ""
  (let ((link (pmwiki-name-to-link s)))
    (message
     (format
      (format "%-20s =>\t%%s" s)
      (if link (pmwiki-link-to-name link) "Not a link!")))))

(test-pmwiki-name-to-link "Wiki.WikiWord")
(test-pmwiki-name-to-link "Wiki/WikiWord")
(test-pmwiki-name-to-link "WikiWord")
(test-pmwiki-name-to-link "WikiWord.")




;;;
;;; pmwiki-URI-type
;;; 
(print (pmwiki-URI-type "Wiki.WikiWord") t)
(print (pmwiki-URI-type "http://www.pmichaud.com/wiki/PmWiki/HomePage") t)
(print (pmwiki-URI-type "http://utenti.lycos.it/sanniolug/pmwiki/pmwiki.php?pagename=Main.WikiSandbox") t)
