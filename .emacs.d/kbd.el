;; replaces forward-sentence
(global-set-key (kbd "M-n")
                (lambda () (interactive) (next-line 5)))

;; replaces forward-sentence
(global-set-key (kbd "M-p")
                (lambda () (interactive) (previous-line 5)))


(global-set-key (kbd "C-c C-k") 'kill-this-buffer)
 (global-set-key (kbd "M-n")
                 (lambda () (interactive) (next-line 5)))
 ;; replaces forward-sentence
 (global-set-key (kbd "M-p")
                 (lambda () (interactive) (previous-line 5)))
 (global-set-key (kbd "M-g M-a")
                 (lambda () (interactive) (beginning-of-buffer)))
 (global-set-key (kbd "M-g M-e")
                 (lambda () (interactive) (end-of-buffer)))
 (global-set-key (kbd "C-c c")
                 (lambda () (interactive) (eval-buffer)))

(define-key key-translation-map (kbd "M-m") (kbd "C-@"))
(define-prefix-command 'my-prefix-map)
;; (global-set-key (kbd "C-b") 'left-char)

(general-define-key
 "C-c b" 'buffer-menu
 "C-c k" 'kill-this-buffer
 "C-c e" 'eval-buffer
 "C-c t" 'term
 "C-c s" 'switch-to-buffer
 "C-c C-a" 'treemacs
 "C-c C-w" 'treemacs--add-project-to-current-workspace
 )
