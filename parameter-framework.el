(defconst parameter-framework-mode-syntax-table
  (let ((table (make-syntax-table)))
    ;; ' is a string delimiter
    (modify-syntax-entry ?' "\"" table)
    ;; " is a string delimiter too
    (modify-syntax-entry ?\" "\"" table)
    ;; # is a comment
    (modify-syntax-entry ?# "<" table)
    ;; \n is a comment ender
    (modify-syntax-entry ?\n ">" table)
    table))

(define-derived-mode parameter-framework-mode prog-mode "Parameter-framework mode"
  :syntax-table parameter-framework-mode-syntax-table
  (font-lock-fontify-buffer))

;; keywords
(font-lock-add-keywords 'parameter-framework-mode
                        '(("component:" . font-lock-keyword-face)
                          ("conf:" . font-lock-keyword-face)
                          ("confGroup:" . font-lock-keyword-face)
                          ("confType:" . font-lock-keyword-face)
                          ("domain:" . font-lock-keyword-face)
                          ("domainGroup:" . font-lock-keyword-face)
                          ("rule:" . font-lock-keyword-face)
                          ("rule:" . font-lock-keyword-face)
                          ("sequenceAware:" . font-lock-keyword-face)
                          ("supConf:" . font-lock-keyword-face)
                          ("supDomain:" . font-lock-keyword-face)))
;; TODO: builtins
;; these are not really builtins, but it's nice to have another
;; color for them (font-lock-builtin-face)
;;(font-lock-add-keywords 'parameter-framework-mode
;;                        '(()))

(provide 'parameter-framework)
