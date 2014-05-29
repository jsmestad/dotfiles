;; All custom key bindings go here :)

;; Enable fn key as Hyper on OS X
(setq mac-function-modifier 'hyper)

;; unset key bindings
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-x C-z"))

;; increase/decrease font size
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; spotify.el
(global-set-key (kbd "<f7>") 'spotify-previous)
(global-set-key (kbd "<f8>") 'spotify-toggle)
(global-set-key (kbd "<f9>") 'spotify-next)

;; Toggle comments
(define-key global-map (kbd "<f12>") 'comment-or-uncomment-region-or-line)

;; Misc
(define-key global-map (kbd "C-s-t") 'custom-goto-symbol)
(define-key global-map (kbd "C-x g") 'magit-status)
(define-key global-map (kbd "C-x O") 'back-window)


;; Tmux.el
(define-key global-map (kbd "C-c C-c") 'zcukes)
(define-key global-map (kbd "C-c C-S-c") 'tmux-rspec-current-buffer)
(define-key global-map (kbd "C-c C-r") 'zroutes)

;; Align your code in a pretty way.
(global-set-key (kbd "C-x \\") 'align-regexp)

;; Misc Common BIndings
(define-key global-map [?\s-t] 'projectile-find-file)
(define-key global-map [?\s-r] 'custom-goto-symbol)
(define-key global-map [?\s-m] 'magit-status)
(define-key global-map (kbd "C-c C-f") 'ag)
(define-key global-map (kbd "C-c C-p") 'projectile-switch-project)
(define-key global-map (kbd "C-c C-t") 'projectile-find-file)
(define-key global-map (kbd "M-e") 'er/expand-region)

;; Smart Open Line
(global-set-key (kbd "C-S-O") 'smart-open-line-above)
(global-set-key (kbd "C-o") 'smart-open-line)

;; Multiple-Cursors
(global-set-key (kbd "C-S-m") 'mc/mark-all-like-this-dwim)
(global-unset-key (kbd "M-<down-mouse-1>"))
(global-set-key (kbd "M-<mouse-1>") 'mc/add-cursor-on-click)

;; Resize Windows
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)
