;;================================================================
;; set dictionary
(autoload 'dictionary-search "dictionary"
  "Ask for a word and search it in all dictionaries" t)
(autoload 'dictionary-match-words "dictionary"
  "Ask for a word and search all matching words in the dictionaries" t)
(autoload 'dictionary-lookup-definition "dictionary"
  "Unconditionally lookup the word at point." t)
(autoload 'dictionary "dictionary"
  "Create a new dictionary buffer" t)
(autoload 'dictionary-mouse-popup-matching-words "dictionary"
  "Display entries matching the word at the cursor" t)
(autoload 'dictionary-popup-matching-words "dictionary"
  "Display entries matching the word at the point" t)
(autoload 'dictionary-tooltip-mode "dictionary"
  "Display tooltips for the current word" t)
(autoload 'global-dictionary-tooltip-mode "dictionary"
  "Enable/disable dictionary-tooltip-mode for all buffers" t)

;;    In  addition, some key bindings for faster access can be useful. I use
;;    the following ones in my installation:

;; key bindings
(define-key global-map (kbd "s-s") 'dictionary-search)
(define-key global-map (kbd "s-m") 'dictionary-match-words)
(setq dictionary-server "localhost")

;; ;; Tool-tip support for GNU Emacs 21
;; (setq dictionary-tooltip-dictionary "eng-deu")
;; (global-dictionary-tooltip-mode 1)
;;================================================================
