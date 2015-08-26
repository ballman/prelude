(add-hook 'projectile-mode-hook 'projectile-rails-on)

(require 'robe)
(add-hook 'ruby-mode-hook 'robe-mode)
;(defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
;  (rvm-activate-corresponding-ruby))

(global-company-mode t)
(push 'company-robe company-backends)

