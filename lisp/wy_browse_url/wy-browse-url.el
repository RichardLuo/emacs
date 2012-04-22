
(defmacro browse-url-maybe-new-tab (arg)
  `(if (interactive-p)
       ,arg
     browse-url-new-tab-flag))

(defun browse-url-phoenix (url &optional new-window new-tab)
  "Ask the Phoenix WWW browser to load URL.
Default to the URL around or before point.  The strings in variable
`browse-url-phoenix-arguments' are also passed to Phoenix.

When called interactively, if variable `browse-url-new-window-flag' is
non-nil, load the document in a new Phoenix window, otherwise use a
random existing one.  A non-nil interactive prefix argument reverses
the effect of `browse-url-new-window-flag'.

When called non-interactively, optional second argument NEW-WINDOW is
used instead of `browse-url-new-window-flag'."
  (interactive (browse-url-interactive-arg "URL: "))
  ;; URL encode any `confusing' characters in the URL.  This needs to
  ;; include at least commas; presumably also close parens.
  (while (string-match "[,)]" url)
    (setq url (replace-match
			          (format "%%%x" (string-to-char (match-string 0 url))) t t url)))
  (let* ((process-environment (browse-url-process-environment))
         (process (apply 'start-process
						  (concat "phoenix " url) nil
						   browse-url-phoenix-program
						    (append
							   browse-url-phoenix-arguments
							     (if (eq window-system 'w32)
									       (list url)
								       (append
										     (if new-window '("-noraise"))
											      (list "-remote"
														   (concat "openURL(" url
																      (if (browse-url-maybe-new-window
																		   new-window)
																		         ",new-window")
                                           (if (browse-url-maybe-new-tab
												new-tab)
											          ",new-tab")
										      ")"))))))))
    (set-process-sentinel process
						    `(lambda (process change)
							        (browse-url-phoenix-sentinel process ,url)))))

(defun browse-url-phoenix-sentinel (process url)
  "Handle a change to the process communicating with Phoenix."
  (or (eq (process-exit-status process) 0)
      (let* ((process-environment (browse-url-process-environment)))
		;; Phoenix not running - start it
		(message "Starting Phoenix...")
		(apply 'start-process (concat "phoenix" url) nil
			          browse-url-phoenix-program
					         (append browse-url-phoenix-startup-arguments (list url))))))

(defun browse-url-phoenix-send (command)
  "Send a remote control command to Phoenix."
  (let* ((process-environment (browse-url-process-environment)))
    (apply 'start-process "phoenix" nil
           browse-url-phoenix-program
           (append browse-url-phoenix-arguments
                   (list "-remote" command)))))

(defun browse-url-phoenix-open-new-window ()
  "Ask Phoenix to reload its current document.
How depends on `browse-url-phoenix-version'."
  (interactive)
  (browse-url-phoenix-send "xfeDoCommand(openBrowser)"))

