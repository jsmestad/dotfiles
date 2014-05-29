(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-by-copying-when-mismatch nil)
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups"))))
 '(coffee-tab-width 2)
 '(column-number-mode t)
 '(cua-enable-cua-keys nil)
 '(cua-mode t nil (cua-base))
 '(cua-remap-control-z t)
 '(custom-safe-themes (quote ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "495adf3bee5eac6c5fbad743be36ea86a9d33d3da16b1c0643a6ec2742fda496" default)))
 '(default-cursor-type (quote (bar . 2)) t)
 '(fill-column 80)
 '(fringe-mode (quote (nil . 0)) nil (fringe))
 '(global-hl-line-mode 1)
 '(icomplete-mode 1)
 '(ido-enable-flex-matching t)
 '(ido-mode (quote both) nil (ido))
 '(ido-use-filename-at-point (quote guess))
 '(ido-use-url-at-point t)
 '(indent-tabs-mode nil)
 '(js-indent-level 2)
 '(left-fringe-width 3 t)
 '(mark-even-if-inactive nil)
 '(markdown-command "redcarpet --parse-fenced_code_blocks")
 '(multi-term-dedicated-select-after-open-p t)
 '(multi-term-dedicated-window-height 20)
 '(multi-term-scroll-to-bottom-on-output t)
 '(org-babel-load-languages (quote ((emacs-lisp . t) (ruby . t) (sh . t) (awk . t) (java . t) (clojure . t) (latex . t) (C . t))))
 '(org-confirm-babel-evaluate nil)
 '(org-export-htmlize-output-type (quote css))
 '(org-export-htmlized-org-css-url nil)
 '(org-log-done (quote note))
 '(org-replace-disputed-keys t)
 '(org2blog/wp-default-categories (quote ("Uncategorized")))
 '(ruby-deep-arglist nil)
 '(scroll-bar-mode nil)
 '(scss-compile-at-save nil)
 '(show-paren-mode t)
 '(sp-autoinsert-quote-if-followed-by-closing-pair nil)
 '(tags-revert-without-query t)
 '(term-unbind-key-list (quote ("C-z" "C-x" "C-h" "C-y" "<ESC>")))
 '(tool-bar-mode nil)
 '(visual-bell t)
 '(whitespace-style (quote (face tabs trailing space-before-tab indentation empty space-after-tab tab-mark))))

(custom-set-faces
 '(default ((t (:family "Source Code Pro Light" :slant normal :weight regular :height 130))))
 '(variable-pitch ((t (:family "Source Code Pro Light" :slant normal :weight regular :height 130)))))

(menu-bar-mode nil)

(setq make-backup-files        nil) ;; Don't want any backup files
(setq auto-save-list-file-name nil) ;; Don't want any .saves files
(setq auto-save-default        nil) ;; Don't want any auto saving

(setq backup-directory-alist `(("." . "~/.emacs.d/backups")))
(setq backup-by-copying t)

(setq search-highlight            t) ;; Highlight search object
(setq query-replace-highlight     t) ;; Highlight query object
(setq mouse-sel-retain-highlight  t) ;; Keep mouse highlighting

;; (require 'tomorrow-night-theme)

;; (load-theme 'solarized-light)

;; (require 'ample-theme)
;; (require 'distinguished-theme)
(require 'flatland-theme)

(when (display-graphic-p)
  (set-cursor-color "#FF0000")
  (custom-set-variables '(global-hl-line-mode 1)))
