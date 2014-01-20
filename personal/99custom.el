(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#000000" "#cc0000" "#7f9f7f" "#ffff00" "#8cd0d3" "#dc8cc3" "#93e0e3" "#ffffff"])
 '(custom-safe-themes (quote ("c53e7743ce4b52abc8723ca7eed365dc2cb55773cdf8e9bf23bf3355644c7c2d" "24fb97fa9b7b83837994a78efc2860edc548155b73c81b191f830e3f4ab01cce" "27b53b2085c977a8919f25a3a76e013ef443362d887d52eaa7121e6f92434972" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "cc83fa4ffec1545d4bde6a44b1fb8431f9090874a22554920c709fa97338d0aa" default)))
 '(fci-rule-color "#383838")
 '(scroll-bar-mode nil))
;(load-theme 'ballman t)
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 80 :width normal :foundry "*" :family "lucidatypewriter")))))

(remove-hook 'text-mode-hook 'turn-on-auto-fill)


(setq mouse-yank-at-point t)
(setq x-select-enable-clipboard t)

;; autocompletion
(require 'auto-complete-config)

(global-set-key "\e\e" 'goto-line)

(key-chord-mode 1)
(key-chord-define-global "fg" 'iy-go-to-char)
(key-chord-define-global "df" 'iy-go-to-char-backward)

;(key-chord-define js-mode-map ";;" "\C-e;")

(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)


(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

(add-to-list 'default-frame-alist '(width  . 81))
(add-to-list 'default-frame-alist '(height . 65))

