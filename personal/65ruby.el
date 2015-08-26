(require 'flymake-ruby)
(require 'ruby-refactor)

(add-hook 'ruby-mode-hook 'flymake-ruby-load)
(add-hook 'ruby-mode-hook 'ruby-refactor-mode-launch)

(add-to-list 'auto-mode-alist '("\\.rabl" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
