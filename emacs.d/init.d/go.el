(defun set-tab-width-4 ()
  "Set tab width to 4"
  (custom-set-variables '(default-tab-width 4)))

(add-hook 'go-mode-hook 'set-tab-width-4)
