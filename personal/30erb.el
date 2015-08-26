(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(eval-after-load "web-mode"
  '(setq web-mode-tag-auto-close-style 1))
