;; Autopair
(defun autopairs-ret (arg)
  (interactive "P")
  (let (pair)
    (dolist (pair skeleton-pair-alist)
      (when (eq (char-after) (car (last pair)))
        (save-excursion (newline-and-indent))))
    (newline arg)
    (indent-according-to-mode)))
(global-set-key (kbd "RET") 'autopairs-ret)

(autopair-global-mode t)

;; Whitespace cleanup
(add-hook 'before-save-hook (lambda () (delete-trailing-whitespace)))

;; y or n vs yes or no
(fset 'yes-or-no-p 'y-or-n-p)

;; Describe the last ran command
(defun describe-last-function()
  (interactive)
  (describe-function last-command))

;; Modify zap-to-char to take one less character
(defadvice zap-to-char (after my-zap-to-char-advice (arg char) activate)
  "Kill up to the ARG'th occurence of CHAR, and leave CHAR. If
you are deleting forward, the CHAR is replaced and the point is
put before CHAR"
  (insert char)
  (if (< 0 arg) (forward-char -1)))

;; Setup fill column indicator
(setq fill-column 80)
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)

;; Globally enable projectile mode
(projectile-global-mode)
(setq projectile-completion-system 'grizzl)

;; Setup for Powerline
;; (require 'powerline)
;; (powerline-default-theme)

;; Magit for OSX
(if (string-equal system-type "darwin")
    (setq magit-emacsclient-executable "/usr/local/bin/emacsclient"))

(defun smart-open-line ()
  "Insert an empty line after the current line.
Position the cursor at its beginning, according to the current mode."
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))

(defun smart-open-line-above ()
  "Insert an empty line above the current line.
Position the cursor at it's beginning, according to the current mode."
  (interactive)
  (move-beginning-of-line nil)
  (newline-and-indent)
  (forward-line -1)
  (indent-according-to-mode))

;; Opposite of 'other-window
(defun back-window ()
  (interactive)
  (other-window -1))

;; Smartparens
(show-smartparens-global-mode +1)
