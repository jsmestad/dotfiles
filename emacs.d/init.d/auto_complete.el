;; Configurations for AutoComplete go here
(require 'auto-complete-config)
(require 'go-autocomplete)

(ac-config-default)
(setq ac-auto-start t)
(ac-set-trigger-key "TAB")

(setq rsense-home "/opt/rsense-0.3/bin")
(require 'rsense)
(add-hook 'ruby-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c .") 'ac-complete-rsense)))
(add-hook 'ruby-mode-hook
          (lambda ()
            (add-to-list 'ac-sources 'ac-source-rsense-method)

(add-to-list 'ac-sources 'ac-source-rsense-constant)))
(add-to-list 'ac-sources 'ac-go-candidates)
