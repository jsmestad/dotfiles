(require 'package)

(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("tromey" . "http://tromey.com/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(;; Helper Packages
                      dash
                      s

                      ;; Misc Tools
                      ag
                      auto-complete
                      autopair
                      fill-column-indicator
                      grizzl
                      ido-ubiquitous
                      magit
                      org
                      projectile
                      rainbow-mode
                      expand-region
                      multiple-cursors
                      smartparens

                      ;; Snippets
                      yasnippet

                      ;; Language specific packages
                      coffee-mode
                      feature-mode
                      go-mode
                      go-autocomplete
                      haml-mode
                      inf-ruby
                      markdown-mode
                      multi-web-mode
                      rinari
                      rsense
                      rspec-mode
                      ruby-end
                      ruby-tools
                      yaml-mode
                      js2-mode
                      ruby-mode
                      )
  "A list of packages to ensure are installed at launch")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(dolist (p my-packages)
  (require p))
