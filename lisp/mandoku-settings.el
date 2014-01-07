(let ((uval (quote (("Server" "gl.kanripo.org") ("Email" "cwittern@yahoo.com") ("Token" "") ("basedir" "~/db")))))
(mandoku-set-settings uval)
)

(let ((uval (quote (("ZB" "http://www.kanripo.org/zb")))))
(mandoku-set-repos uval)
)

(setq mandoku-text-dir (expand-file-name (concat mandoku-base-dir "text/")))
(setq mandoku-meta-dir (expand-file-name  (concat mandoku-base-dir "meta/")))
(setq mandoku-temp-dir (expand-file-name  (concat mandoku-base-dir "temp/")))
(setq mandoku-sys-dir (expand-file-name  (concat mandoku-base-dir "system/")))
(setq mandoku-dict-url "http://www.kanripo.org/zb")

(require 'mandoku)
(require 'mandoku-remote)
(require 'org-mandoku)
(require 'mandoku-dict)
(setq org-return-follows-link t)
(setq mandoku-do-remote t)
(setq mandoku-string-limit 10)
(setq mandoku-index-display-limit 2000)
(setq mandoku-local-init-file "~/.emacs.d/mandoku-local-init.el")
(ignore-errors 
 (load "mandoku-dict" t)
 (global-set-key [f5] 'mandoku-dict-mlookup))
(global-set-key [f6] 'mandoku-search-text)
(global-set-key [f7] 'mandoku-search-titles)
(setq org-support-shift-select 'always)
