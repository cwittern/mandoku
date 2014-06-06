;; annotating for mandoku files
;; cwittern@gmail.com [2014-06-06T13:01:38+0900]

(require 'mandoku)

(defvar mandoku-annot-dir (expand-file-name  (concat mandoku-base-dir "notes/")))

(defvar mandoku-annot-regex "^\\([^ ]+\\) *\\([^:]+\\)::\\(.*?\\)$") 

(defun mandoku-annot-scan (&optional annot-dir)
(interactive)
(let (f1 type p olp)
  (save-excursion 
    (goto-char (point-min))
    (while (re-search-forward mandoku-annot-regex nil t)
      (setq f1 (buffer-substring-no-properties (match-beginning 1) (match-end 1)))
      (setq type (buffer-substring-no-properties (match-beginning 2) (match-end 2)))
      (setq p (mandoku-position-with-char  (search-backward f1)))
      (setq olp (mandoku-get-outline-path p))
    


(provide 'mandoku-annot)
