;; Customizations for Org Mode

;; Quick way to access org files
;; (defun org-open () "Open file from ~/Org" (interactive)
;;   (ido-find-file-in-dir "~/Org"))
;; (global-set-key (kbd "C-S-O") 'org-open)

;; Push ~/Org to GitHub
(defun org-push () "Push Git repo at ~/Org" (interactive)
  (save-buffer)
  (shell-command "cd $HOME/Org")
  (shell-command "git add .; git com -am \"Updated Org Files\"")
  (shell-command "git push origin master"))

;; Pull ~/Org from GitHub
(defun org-pull () "Push Git repo at ~/Org" (interactive)
  (shell-command "cd $HOME/Org")
  (shell-command "git pull origin master")
  (revert-buffer (current-buffer)))

;; Clone repo to ~/Org from Github
(defun org-initialize () "Clone my Org repo" (interactive)
  (shell-command "git clone git@github.com:bradylove/Org.git $HOME/Org"))


;; Add more todo keywords to ORG mode
(setq org-todo-keywords
      '((sequence "TODO(t)" "|" "DONE(d)")
        (sequence "FEATURE(f)" "|" "COMPLETED(c)")
        (sequence "BUG(b)" "|" "FIXED(x)")
        (sequence "|" "CANCELED(a)")))

;; Timestamp items when completed
(setq org-log-done 'time)
