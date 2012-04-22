(c-add-style "mycodingstyle"
             '((c-comment-only-line-offset . 0)
               (c-hanging-braces-alist . ((substatement-open before after)))
               (c-offsets-alist . ((topmost-intro        . 0)
                                   (topmost-intro-cont   . 0)
                                   (substatement         . 3)
                                   (substatement-open    . 0)
                                   (statement-case-open  . 3)
                                   (statement-cont       . 3)
                                   (access-label         . -3)
                                   (inclass              . 3)
                                   (inline-open          . 3)
                                   (innamespace          . 0)
                                   ))))

(defconst xlive-cc-style "mycodingstyle"
  "c/c++ coding style used for X-Live project")


;; c/c++ mode
(add-hook 'c-mode-common-hook
          '(lambda()
             (c-set-style "mycodingstyle")
             (setq tab-width 2)
             (setq c-basic-offset tab-width))) 

(add-hook 'c++-mode-hook
		  '(lambda()
			 (c-set-style xlive-cc-style)))

(add-hook 'c-mode-hook
		  '(lambda ()
			 (c-set-style xlive-cc-style)))

(add-hook 'java-mode-hook
		  '(lambda ()
			 (c-set-style xlive-cc-style)))
