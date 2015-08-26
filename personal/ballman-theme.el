(deftheme ballman "My own theme for high contrast. Created 2012-09-03.")

(let ((class '((class color) (min-colors 89)))
      ;; colors with +x are lighter, colors with -x are darker
      (ballman-fg "#ffffff")
      (ballman-fg-1 "#bbbbbb")
      (ballman-fg-2 "#777777")
      (ballman-bg "#000000")
      (ballman-bg+05 "#080808")
      (ballman-bg+1 "#2b2b2b")
      (ballman-bg+2 "#383838")
      (ballman-bg+3 "#4f4f4f")
      (ballman-bg+4 "#5f5f5f")
      (ballman-bg+5 "#6f6f6f")
      (ballman-red "#ff0000")
      (ballman-red-1 "#bc8383")
      (ballman-red-2 "#ac7373")
      (ballman-red-3 "#9c6363")
      (ballman-red-4 "#8c5353")
      (ballman-orange "#FFA500")
      (ballman-yellow "#ffff00")
      (ballman-yellow-1 "#ffff99")
      (ballman-yellow-2 "#ffffcc")
      (ballman-green-1 "#336600")
      (ballman-green "#339900")
      (ballman-green+1 "#009900")
      (ballman-green+2 "#33cc00")
      (ballman-green+3 "#00cc00")
      (ballman-green+4 "#33ff00")
      (ballman-green+5 "#00ff00")
      (ballman-cyan "#00ccff")
      (ballman-blue+1 "#B0C4DE")
      (ballman-blue "#0000cc")
      (ballman-blue-1 "#7cb8bb")
      (ballman-blue-2 "#6ca0a3")
      (ballman-blue-3 "#5c888b")
      (ballman-blue-4 "#4682B4")
      (ballman-blue-5 "#366060")
      (ballman-blue-6 "#20248A")
      (ballman-magenta "#cc00ff"))
  (custom-theme-set-faces
   'ballman

   '(button ((t (:underline t))))
   `(link ((,class (:foreground ,ballman-cyan :underline t :weight bold))))
   `(link-visited ((,class (:foreground ,ballman-yellow-2 :underline t :weight normal))))

   ;;; basic coloring
   `(default ((,class (:foreground ,ballman-fg :background ,ballman-bg))))
   `(cursor ((,class (:background ,ballman-green+4))))
   `(escape-glyph-face ((,class (:foreground ,ballman-red))))
   `(fringe ((,class (:foreground ,ballman-fg :background ,ballman-bg+1))))
   `(header-line ((,class (:foreground ,ballman-blue+1
                                       :background ,ballman-bg+2
                                       :box (:line-width -1 :style released-button)))))
   `(highlight ((,class (:background ,ballman-bg))))

   ;;; compilation
   `(compilation-column-face ((,class (:foreground ,ballman-yellow))))
   `(compilation-enter-directory-face ((,class (:foreground ,ballman-green))))
   `(compilation-error-face ((,class (:background ,ballman-red-1 :weight bold :underline t))))
   `(compilation-face ((,class (:foreground ,ballman-fg))))
   `(compilation-info-face ((,class (:foreground ,ballman-blue))))
   `(compilation-info ((,class (:foreground ,ballman-green+4 :underline t))))
   `(compilation-leave-directory-face ((,class (:foreground ,ballman-green))))
   `(compilation-line-face ((,class (:foreground ,ballman-yellow))))
   `(compilation-line-number ((,class (:foreground ,ballman-yellow))))
   `(compilation-message-face ((,class (:foreground ,ballman-blue))))
   `(compilation-warning-face ((,class (:background ,ballman-yellow-1 :weight bold :underline t))))

   ;;; grep
   `(grep-context-face ((,class (:foreground ,ballman-fg))))
   `(grep-error-face ((,class (:foreground ,ballman-red-1 :weight bold :underline t))))
   `(grep-hit-face ((,class (:foreground ,ballman-blue))))
   `(grep-match-face ((,class (:foreground ,ballman-orange :weight bold))))
   `(match ((,class (:background ,ballman-bg+1 :foreground ,ballman-orange :weight bold))))

   ;; faces used by isearch
   `(isearch ((,class (:foreground ,ballman-green+2 :background ,ballman-bg+1))))
   `(isearch-fail ((,class (:foreground ,ballman-fg :background ,ballman-red-4))))
   `(lazy-highlight ((,class (:foreground ,ballman-blue :background ,ballman-bg+2))))

   `(menu ((,class (:foreground ,ballman-fg :background ,ballman-bg))))
   `(minibuffer-prompt ((,class (:foreground ,ballman-yellow-2))))
   `(mode-line
     ((,class (:foreground ,ballman-fg
                           :background ,ballman-blue-5
                           :box (:line-width -1 :style released-button)))))
   `(mode-line-buffer-id ((,class (:foreground ,ballman-yellow :weight bold))))
   `(mode-line-inactive
     ((,class (:foreground ,ballman-fg-1
                           :background ,ballman-bg+4
                           :box (:line-width -1 :style released-button)))))
   `(region ((,class (:background ,ballman-blue-6 :foreground ,ballman-fg))))
   `(secondary-selection ((,class (:background ,ballman-bg+2))))
   `(trailing-whitespace ((,class (:background ,ballman-red-1))))
   `(vertical-border ((,class (:foreground ,ballman-fg))))

   ;;; font lock
   `(font-lock-builtin-face ((,class (:foreground ,ballman-blue))))
   `(font-lock-comment-face ((,class (:foreground ,ballman-fg-2))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,ballman-bg+3))))
   `(font-lock-constant-face ((,class (:foreground ,ballman-green+4))))
   `(font-lock-doc-face ((,class (:foreground ,ballman-green+1))))
   `(font-lock-doc-string-face ((,class (:foreground ,ballman-blue+1))))
   `(font-lock-function-name-face ((,class (:foreground ,ballman-green+4))))
   `(font-lock-keyword-face ((,class (:foreground ,ballman-yellow :weight bold))))
   `(font-lock-negation-char-face ((,class (:foreground ,ballman-fg))))
   `(font-lock-preprocessor-face ((,class (:foreground ,ballman-blue))))
   `(font-lock-string-face ((,class (:foreground ,ballman-orange))))
   `(font-lock-type-face ((,class (:foreground ,ballman-blue-4))))
   `(font-lock-variable-name-face ((,class (:foreground ,ballman-orange))))
   `(font-lock-warning-face ((,class (:background ,ballman-yellow-1 :weight bold :underline t))))

   `(c-annotation-face ((,class (:inherit font-lock-constant-face))))

   ;;; newsticker
   `(newsticker-date-face ((,class (:foreground ,ballman-fg))))
   `(newsticker-default-face ((,class (:foreground ,ballman-fg))))
   `(newsticker-enclosure-face ((,class (:foreground ,ballman-green+3))))
   `(newsticker-extra-face ((,class (:foreground ,ballman-bg+2 :height 0.8))))
   `(newsticker-feed-face ((,class (:foreground ,ballman-fg))))
   `(newsticker-immortal-item-face ((,class (:foreground ,ballman-green))))
   `(newsticker-new-item-face ((,class (:foreground ,ballman-blue))))
   `(newsticker-obsolete-item-face ((,class (:foreground ,ballman-red))))
   `(newsticker-old-item-face ((,class (:foreground ,ballman-bg+3))))
   `(newsticker-statistics-face ((,class (:foreground ,ballman-fg))))
   `(newsticker-treeview-face ((,class (:foreground ,ballman-fg))))
   `(newsticker-treeview-immortal-face ((,class (:foreground ,ballman-green))))
   `(newsticker-treeview-listwindow-face ((,class (:foreground ,ballman-fg))))
   `(newsticker-treeview-new-face ((,class (:foreground ,ballman-blue :weight bold))))
   `(newsticker-treeview-obsolete-face ((,class (:foreground ,ballman-red))))
   `(newsticker-treeview-old-face ((,class (:foreground ,ballman-bg+3))))
   `(newsticker-treeview-selection-face ((,class (:foreground ,ballman-yellow))))

   ;;; external

   ;; full-ack
   `(ack-separator ((,class (:foreground ,ballman-fg))))
   `(ack-file ((,class (:foreground ,ballman-blue))))
   `(ack-line ((,class (:foreground ,ballman-yellow))))
   `(ack-match ((,class (:foreground ,ballman-orange :background ,ballman-bg+1 :weigth bold))))

   ;; auctex
   `(font-latex-bold ((,class (:inherit bold))))
   `(font-latex-warning ((,class (:inherit font-lock-warning))))
   `(font-latex-sedate ((,class (:foreground ,ballman-yellow :weight bold ))))
   `(font-latex-title-4 ((,class (:inherit variable-pitch :weight bold))))

   ;; auto-complete
   `(ac-candidate-face ((,class (:background ,ballman-bg+3 :foreground "black"))))
   `(ac-selection-face ((,class (:background ,ballman-blue-4 :foreground ,ballman-fg))))
   `(popup-tip-face ((,class (:background ,ballman-yellow-2 :foreground "black"))))
   `(popup-scroll-bar-foreground-face ((,class (:background ,ballman-blue-5))))
   `(popup-scroll-bar-background-face ((,class (:background ,ballman-bg+1))))
   `(popup-isearch-match ((,class (:background ,ballman-bg :foreground ,ballman-fg))))

   ;; diff
   `(diff-added ((,class (:foreground ,ballman-green+4))))
   `(diff-changed ((,class (:foreground ,ballman-yellow))))
   `(diff-removed ((,class (:foreground ,ballman-red))))
   `(diff-header ((,class (:background ,ballman-bg+2))))
   `(diff-file-header
     ((,class (:background ,ballman-bg+2 :foreground ,ballman-fg :bold t))))

   ;; ert
   `(ert-test-result-expected ((,class (:foreground ,ballman-green+4 :background ,ballman-bg))))
   `(ert-test-result-unexpected ((,class (:foreground ,ballman-red :background ,ballman-bg))))

   ;; eshell
   `(eshell-prompt ((,class (:foreground ,ballman-yellow :weight bold))))
   `(eshell-ls-archive ((,class (:foreground ,ballman-red-1 :weight bold))))
   `(eshell-ls-backup ((,class (:inherit font-lock-comment))))
   `(eshell-ls-clutter ((,class (:inherit font-lock-comment))))
   `(eshell-ls-directory ((,class (:foreground ,ballman-blue+1 :weight bold))))
   `(eshell-ls-executable ((,class (:foreground ,ballman-red-1 :weight bold))))
   `(eshell-ls-unreadable ((,class (:foreground ,ballman-fg))))
   `(eshell-ls-missing ((,class (:inherit font-lock-warning))))
   `(eshell-ls-product ((,class (:inherit font-lock-doc))))
   `(eshell-ls-special ((,class (:foreground ,ballman-yellow :weight bold))))
   `(eshell-ls-symlink ((,class (:foreground ,ballman-cyan :weight bold))))

   ;; flymake
   `(flymake-errline ((,class (:background ,ballman-red-1 :foreground ,ballman-bg :weight bold :underline t))))
   `(flymake-warnline ((,class (:background ,ballman-yellow-1 :foreground ,ballman-bg :weight bold :underline t))))

   ;; flyspell
   `(flyspell-duplicate ((,class (:foreground ,ballman-yellow :weight bold :underline t))))
   `(flyspell-incorrect ((,class (:foreground ,ballman-red :weight bold :underline t))))

   ;; erc
   `(erc-action-face ((,class (:inherit erc-default-face))))
   `(erc-bold-face ((,class (:weight bold))))
   `(erc-current-nick-face ((,class (:foreground ,ballman-blue :weight bold))))
   `(erc-dangerous-host-face ((,class (:inherit font-lock-warning))))
   `(erc-default-face ((,class (:foreground ,ballman-fg))))
   `(erc-direct-msg-face ((,class (:inherit erc-default))))
   `(erc-error-face ((,class (:inherit font-lock-warning))))
   `(erc-fool-face ((,class (:inherit erc-default))))
   `(erc-highlight-face ((,class (:inherit hover-highlight))))
   `(erc-input-face ((,class (:foreground ,ballman-yellow))))
   `(erc-keyword-face ((,class (:foreground ,ballman-blue :weight bold))))
   `(erc-nick-default-face ((,class (:foreground ,ballman-yellow :weight bold))))
   `(erc-my-nick-face ((,class (:foreground ,ballman-red :weigth bold))))
   `(erc-nick-msg-face ((,class (:inherit erc-default))))
   `(erc-notice-face ((,class (:foreground ,ballman-green))))
   `(erc-pal-face ((,class (:foreground ,ballman-orange :weight bold))))
   `(erc-prompt-face ((,class (:foreground ,ballman-orange :background ,ballman-bg :weight bold))))
   `(erc-timestamp-face ((,class (:foreground ,ballman-green+1))))
   `(erc-underline-face ((t (:underline t))))

   ;; gnus
   `(gnus-group-mail-1 ((,class (:bold t :inherit gnus-group-mail-1-empty))))
   `(gnus-group-mail-1-empty ((,class (:inherit gnus-group-news-1-empty))))
   `(gnus-group-mail-2 ((,class (:bold t :inherit gnus-group-mail-2-empty))))
   `(gnus-group-mail-2-empty ((,class (:inherit gnus-group-news-2-empty))))
   `(gnus-group-mail-3 ((,class (:bold t :inherit gnus-group-mail-3-empty))))
   `(gnus-group-mail-3-empty ((,class (:inherit gnus-group-news-3-empty))))
   `(gnus-group-mail-4 ((,class (:bold t :inherit gnus-group-mail-4-empty))))
   `(gnus-group-mail-4-empty ((,class (:inherit gnus-group-news-4-empty))))
   `(gnus-group-mail-5 ((,class (:bold t :inherit gnus-group-mail-5-empty))))
   `(gnus-group-mail-5-empty ((,class (:inherit gnus-group-news-5-empty))))
   `(gnus-group-mail-6 ((,class (:bold t :inherit gnus-group-mail-6-empty))))
   `(gnus-group-mail-6-empty ((,class (:inherit gnus-group-news-6-empty))))
   `(gnus-group-mail-low ((,class (:bold t :inherit gnus-group-mail-low-empty))))
   `(gnus-group-mail-low-empty ((,class (:inherit gnus-group-news-low-empty))))
   `(gnus-group-news-1 ((,class (:bold t :inherit gnus-group-news-1-empty))))
   `(gnus-group-news-2 ((,class (:bold t :inherit gnus-group-news-2-empty))))
   `(gnus-group-news-3 ((,class (:bold t :inherit gnus-group-news-3-empty))))
   `(gnus-group-news-4 ((,class (:bold t :inherit gnus-group-news-4-empty))))
   `(gnus-group-news-5 ((,class (:bold t :inherit gnus-group-news-5-empty))))
   `(gnus-group-news-6 ((,class (:bold t :inherit gnus-group-news-6-empty))))
   `(gnus-group-news-low ((,class (:bold t :inherit gnus-group-news-low-empty))))
   `(gnus-header-content ((,class (:inherit message-header-other))))
   `(gnus-header-from ((,class (:inherit message-header-from))))
   `(gnus-header-name ((,class (:inherit message-header-name))))
   `(gnus-header-newsgroups ((,class (:inherit message-header-other))))
   `(gnus-header-subject ((,class (:inherit message-header-subject))))
   `(gnus-summary-cancelled ((,class (:foreground ,ballman-orange))))
   `(gnus-summary-high-ancient ((,class (:foreground ,ballman-blue))))
   `(gnus-summary-high-read ((,class (:foreground ,ballman-green :weight bold))))
   `(gnus-summary-high-ticked ((,class (:foreground ,ballman-orange :weight bold))))
   `(gnus-summary-high-unread ((,class (:foreground ,ballman-fg :weight bold))))
   `(gnus-summary-low-ancient ((,class (:foreground ,ballman-blue))))
   `(gnus-summary-low-read ((t (:foreground ,ballman-green))))
   `(gnus-summary-low-ticked ((,class (:foreground ,ballman-orange :weight bold))))
   `(gnus-summary-low-unread ((,class (:foreground ,ballman-fg))))
   `(gnus-summary-normal-ancient ((,class (:foreground ,ballman-blue))))
   `(gnus-summary-normal-read ((,class (:foreground ,ballman-green))))
   `(gnus-summary-normal-ticked ((,class (:foreground ,ballman-orange :weight bold))))
   `(gnus-summary-normal-unread ((,class (:foreground ,ballman-fg))))
   `(gnus-summary-selected ((,class (:foreground ,ballman-yellow :weight bold))))
   `(gnus-cite-1 ((,class (:foreground ,ballman-blue))))
   `(gnus-cite-10 ((,class (:foreground ,ballman-yellow-1))))
   `(gnus-cite-11 ((,class (:foreground ,ballman-yellow))))
   `(gnus-cite-2 ((,class (:foreground ,ballman-blue-1))))
   `(gnus-cite-3 ((,class (:foreground ,ballman-blue-2))))
   `(gnus-cite-4 ((,class (:foreground ,ballman-green+2))))
   `(gnus-cite-5 ((,class (:foreground ,ballman-green+1))))
   `(gnus-cite-6 ((,class (:foreground ,ballman-green))))
   `(gnus-cite-7 ((,class (:foreground ,ballman-red))))
   `(gnus-cite-8 ((,class (:foreground ,ballman-red-1))))
   `(gnus-cite-9 ((,class (:foreground ,ballman-red-2))))
   `(gnus-group-news-1-empty ((,class (:foreground ,ballman-yellow))))
   `(gnus-group-news-2-empty ((,class (:foreground ,ballman-green+3))))
   `(gnus-group-news-3-empty ((,class (:foreground ,ballman-green+1))))
   `(gnus-group-news-4-empty ((,class (:foreground ,ballman-blue-2))))
   `(gnus-group-news-5-empty ((,class (:foreground ,ballman-blue-3))))
   `(gnus-group-news-6-empty ((,class (:foreground ,ballman-bg+2))))
   `(gnus-group-news-low-empty ((,class (:foreground ,ballman-bg+2))))
   `(gnus-signature ((,class (:foreground ,ballman-yellow))))
   `(gnus-x ((,class (:background ,ballman-fg :foreground ,ballman-bg))))

   ;; helm
   `(helm-header
     ((,class (:foreground ,ballman-green
                           :background ,ballman-bg
                           :underline nil
                           :box nil))))
   `(helm-source-header
     ((,class (:foreground ,ballman-yellow
                           :background ,ballman-bg+1
                           :underline nil
                           :weight bold
                           :box (:line-width -1 :style released-button)))))
   `(helm-selection ((,class (:background ,ballman-bg+1 :underline nil))))
   `(helm-selection-line ((,class (:background ,ballman-bg+1))))
   `(helm-visible-mark ((,class (:foreground ,ballman-bg :background ,ballman-yellow-2))))
   `(helm-candidate-number ((,class (:foreground ,ballman-green+4 :background ,ballman-bg+1))))

   ;; hl-line-mode
   `(hl-line-face ((,class (:background ,ballman-bg))))
   `(hl-line ((,class (:background ,ballman-bg+1))))

   ;; ido-mode
   `(ido-first-match ((,class (:foreground ,ballman-blue :weight bold))))
   `(ido-only-match ((,class (:foreground ,ballman-red-1 :weight bold))))
   `(ido-subdir ((,class (:foreground ,ballman-green))))

   ;; js2-mode
   `(js2-warning-face ((,class (:underline ,ballman-orange))))
   `(js2-error-face ((,class (:foreground ,ballman-red :weight bold))))
   `(js2-jsdoc-tag-face ((,class (:foreground ,ballman-green-1))))
   `(js2-jsdoc-type-face ((,class (:foreground ,ballman-green+2))))
   `(js2-jsdoc-value-face ((,class (:foreground ,ballman-green+3))))
   `(js2-function-param-face ((,class (:foreground, ballman-green+3))))
   `(js2-external-variable-face ((,class (:foreground ,ballman-orange))))

   ;; jabber-mode
   `(jabber-roster-user-away ((,class (:foreground ,ballman-green+2))))
   `(jabber-roster-user-online ((,class (:foreground ,ballman-blue-1))))
   `(jabber-roster-user-dnd ((,class (:foreground ,ballman-red-1))))
   `(jabber-rare-time-face ((,class (:foreground ,ballman-green+1))))
   `(jabber-chat-prompt-local ((,class (:foreground ,ballman-blue-1))))
   `(jabber-chat-prompt-foreign ((,class (:foreground ,ballman-red-1))))
   `(jabber-activity-face((,class (:foreground ,ballman-red-1))))
   `(jabber-activity-personal-face ((,class (:foreground ,ballman-blue+1))))
   `(jabber-title-small ((,class (:height 1.1 :weight bold))))
   `(jabber-title-medium ((,class (:height 1.2 :weight bold))))
   `(jabber-title-large ((,class (:height 1.3 :weight bold))))

   ;; linum-mode
   `(linum ((,class (:foreground ,ballman-green+2 :background ,ballman-bg))))

   ;; magit
   `(magit-section-title ((,class (:foreground ,ballman-yellow :weight bold))))
   `(magit-branch ((,class (:foreground ,ballman-orange :weight bold))))
   `(magit-item-highlight ((,class (:background ,ballman-bg+1))))

   ;; message-mode
   `(message-cited-text ((,class (:inherit font-lock-comment))))
   `(message-header-name ((,class (:foreground ,ballman-green+1))))
   `(message-header-other ((,class (:foreground ,ballman-green))))
   `(message-header-to ((,class (:foreground ,ballman-yellow :weight bold))))
   `(message-header-from ((,class (:foreground ,ballman-yellow :weight bold))))
   `(message-header-cc ((,class (:foreground ,ballman-yellow :weight bold))))
   `(message-header-newsgroups ((,class (:foreground ,ballman-yellow :weight bold))))
   `(message-header-subject ((,class (:foreground ,ballman-orange :weight bold))))
   `(message-header-xheader ((,class (:foreground ,ballman-green))))
   `(message-mml ((,class (:foreground ,ballman-yellow :weight bold))))
   `(message-separator ((,class (:inherit font-lock-comment))))

   ;; mew
   `(mew-face-header-subject ((,class (:foreground ,ballman-orange))))
   `(mew-face-header-from ((,class (:foreground ,ballman-yellow))))
   `(mew-face-header-date ((,class (:foreground ,ballman-green))))
   `(mew-face-header-to ((,class (:foreground ,ballman-red))))
   `(mew-face-header-key ((,class (:foreground ,ballman-green))))
   `(mew-face-header-private ((,class (:foreground ,ballman-green))))
   `(mew-face-header-important ((,class (:foreground ,ballman-blue))))
   `(mew-face-header-marginal ((,class (:foreground ,ballman-fg :weight bold))))
   `(mew-face-header-warning ((,class (:foreground ,ballman-red))))
   `(mew-face-header-xmew ((,class (:foreground ,ballman-green))))
   `(mew-face-header-xmew-bad ((,class (:foreground ,ballman-red))))
   `(mew-face-body-url ((,class (:foreground ,ballman-orange))))
   `(mew-face-body-comment ((,class (:foreground ,ballman-fg :slant italic))))
   `(mew-face-body-cite1 ((,class (:foreground ,ballman-green))))
   `(mew-face-body-cite2 ((,class (:foreground ,ballman-blue))))
   `(mew-face-body-cite3 ((,class (:foreground ,ballman-orange))))
   `(mew-face-body-cite4 ((,class (:foreground ,ballman-yellow))))
   `(mew-face-body-cite5 ((,class (:foreground ,ballman-red))))
   `(mew-face-mark-review ((,class (:foreground ,ballman-blue))))
   `(mew-face-mark-escape ((,class (:foreground ,ballman-green))))
   `(mew-face-mark-delete ((,class (:foreground ,ballman-red))))
   `(mew-face-mark-unlink ((,class (:foreground ,ballman-yellow))))
   `(mew-face-mark-refile ((,class (:foreground ,ballman-green))))
   `(mew-face-mark-unread ((,class (:foreground ,ballman-red-2))))
   `(mew-face-eof-message ((,class (:foreground ,ballman-green))))
   `(mew-face-eof-part ((,class (:foreground ,ballman-yellow))))

   ;; mic-paren
   `(paren-face-match ((,class (:foreground ,ballman-bg :background ,ballman-green :weight bold))))
   `(paren-face-mismatch ((,class (:foreground ,ballman-bg :background ,ballman-yellow :weight bold))))
   `(paren-face-no-match ((,class (:foreground ,ballman-bg :background ,ballman-red :weight bold))))

   ;; nav
   `(nav-face-heading ((,class (:foreground ,ballman-yellow))))
   `(nav-face-button-num ((,class (:foreground ,ballman-cyan))))
   `(nav-face-dir ((,class (:foreground ,ballman-green))))
   `(nav-face-hdir ((,class (:foreground ,ballman-red))))
   `(nav-face-file ((,class (:foreground ,ballman-fg))))
   `(nav-face-hfile ((,class (:foreground ,ballman-red-4))))

   ;; mumamo
   `(mumamo-background-chunk-major ((,class (:background nil))))
   `(mumamo-background-chunk-submode1 ((,class (:background ,ballman-bg+1))))
   `(mumamo-background-chunk-submode2 ((,class (:background ,ballman-bg+2))))
   `(mumamo-background-chunk-submode3 ((,class (:background ,ballman-bg+3))))
   `(mumamo-background-chunk-submode4 ((,class (:background ,ballman-bg+1))))

   ;; org-mode
   `(org-agenda-date-today
     ((,class (:foreground "white" :slant italic :weight bold))) t)
   `(org-agenda-structure
     ((,class (:inherit font-lock-comment-face))))
   `(org-archived ((,class (:foreground ,ballman-fg :weight bold))))
   `(org-checkbox ((,class (:background ,ballman-bg+2 :foreground "white"
                                   :box (:line-width 1 :style released-button)))))
   `(org-date ((,class (:foreground ,ballman-blue :underline t))))
   `(org-deadline-announce ((,class (:foreground ,ballman-red-1))))
   `(org-done ((,class (:bold t :weight bold :foreground ,ballman-green+3))))
   `(org-formula ((,class (:foreground ,ballman-yellow-2))))
   `(org-headline-done ((,class (:foreground ,ballman-green+3))))
   `(org-hide ((,class (:foreground ,ballman-bg+1))))
   `(org-level-1 ((,class (:foreground ,ballman-orange))))
   `(org-level-2 ((,class (:foreground ,ballman-green+1))))
   `(org-level-3 ((,class (:foreground ,ballman-blue-1))))
   `(org-level-4 ((,class (:foreground ,ballman-yellow-2))))
   `(org-level-5 ((,class (:foreground ,ballman-cyan))))
   `(org-level-6 ((,class (:foreground ,ballman-green-1))))
   `(org-level-7 ((,class (:foreground ,ballman-red-4))))
   `(org-level-8 ((,class (:foreground ,ballman-blue-4))))
   `(org-link ((,class (:foreground ,ballman-yellow-2 :underline t))))
   `(org-scheduled ((,class (:foreground ,ballman-green+4))))
   `(org-scheduled-previously ((,class (:foreground ,ballman-red-4))))
   `(org-scheduled-today ((,class (:foreground ,ballman-blue+1))))
   `(org-special-keyword ((,class (:foreground ,ballman-yellow-1))))
   `(org-table ((,class (:foreground ,ballman-green+2))))
   `(org-tag ((,class (:bold t :weight bold))))
   `(org-time-grid ((,class (:foreground ,ballman-orange))))
   `(org-todo ((,class (:bold t :foreground ,ballman-red :weight bold))))
   `(org-upcoming-deadline ((,class (:inherit font-lock-keyword-face))))
   `(org-warning ((,class (:bold t :foreground ,ballman-red :weight bold :underline nil))))
   `(org-column ((,class (:background ,ballman-bg+1))))
   `(org-column-title ((,class (:background ,ballman-bg+1 :underline t :weight bold))))

   ;; outline
   `(outline-8 ((,class (:inherit default))))
   `(outline-7 ((,class (:inherit outline-8 :height 1.0))))
   `(outline-6 ((,class (:inherit outline-7 :height 1.0))))
   `(outline-5 ((,class (:inherit outline-6 :height 1.0))))
   `(outline-4 ((,class (:inherit outline-5 :height 1.0))))
   `(outline-3 ((,class (:inherit outline-4 :height 1.0))))
   `(outline-2 ((,class (:inherit outline-3 :height 1.0))))
   `(outline-1 ((,class (:inherit outline-2 :height 1.0))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,ballman-cyan))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,ballman-yellow))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,ballman-blue+1))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,ballman-red-1))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,ballman-orange))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,ballman-blue-1))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,ballman-green+4))))
   `(rainbow-delimiters-depth-8-face ((,class (:foreground ,ballman-red-3))))
   `(rainbow-delimiters-depth-9-face ((,class (:foreground ,ballman-yellow-2))))
   `(rainbow-delimiters-depth-10-face ((,class (:foreground ,ballman-green+2))))
   `(rainbow-delimiters-depth-11-face ((,class (:foreground ,ballman-blue+1))))
   `(rainbow-delimiters-depth-12-face ((,class (:foreground ,ballman-red-4))))

   ;; rpm-mode
   `(rpm-spec-dir-face ((,class (:foreground ,ballman-green))))
   `(rpm-spec-doc-face ((,class (:foreground ,ballman-green))))
   `(rpm-spec-ghost-face ((,class (:foreground ,ballman-red))))
   `(rpm-spec-macro-face ((,class (:foreground ,ballman-yellow))))
   `(rpm-spec-obsolete-tag-face ((,class (:foreground ,ballman-red))))
   `(rpm-spec-package-face ((,class (:foreground ,ballman-red))))
   `(rpm-spec-section-face ((,class (:foreground ,ballman-yellow))))
   `(rpm-spec-tag-face ((,class (:foreground ,ballman-blue))))
   `(rpm-spec-var-face ((,class (:foreground ,ballman-red))))

   ;; rst-mode
   `(rst-level-1-face ((,class (:foreground ,ballman-orange))))
   `(rst-level-2-face ((,class (:foreground ,ballman-green+1))))
   `(rst-level-3-face ((,class (:foreground ,ballman-blue-1))))
   `(rst-level-4-face ((,class (:foreground ,ballman-yellow-2))))
   `(rst-level-5-face ((,class (:foreground ,ballman-cyan))))
   `(rst-level-6-face ((,class (:foreground ,ballman-green-1))))

   ;; show-paren
   `(show-paren-mismatch ((,class (:foreground ,ballman-red-3 :background ,ballman-bg :weight bold))))
   `(show-paren-match ((,class (:foreground ,ballman-cyan :background ,ballman-bg :weight bold))))

   ;; show-smartparen
   `(sp-show-pair-match-face ((,class (:foreground ,ballman-bg :background ,ballman-cyan :weight bold))))
   `(sp-show-pair-mismatch-face ((,class (:foreground ,ballman-red-3 :background ,ballman-bg :weight bold))))

   ;; SLIME
   `(slime-repl-inputed-output-face ((,class (:foreground ,ballman-red))))

   ;; volatile-highlights
   `(vhl/default-face ((,class (:background ,ballman-bg+1))))

   ;; whitespace-mode
   `(whitespace-space ((,class (:background ,ballman-bg :foreground ,ballman-bg+1))))
   `(whitespace-hspace ((,class (:background ,ballman-bg :foreground ,ballman-bg+1))))
   `(whitespace-tab ((,class (:background ,ballman-bg :foreground ,ballman-red))))
   `(whitespace-newline ((,class (:foreground ,ballman-bg+1))))
   `(whitespace-trailing ((,class (:foreground ,ballman-red :background ,ballman-bg))))
   `(whitespace-line-trail ((,class (:background ,ballman-bg+4 :foreground ,ballman-magenta))))
   `(whitespace-space-before-tab ((,class (:background ,ballman-orange :foreground ,ballman-orange))))
   `(whitespace-indentation ((,class (:background ,ballman-yellow :foreground ,ballman-red))))
   `(whitespace-space-after-tab ((,class (:background ,ballman-yellow :foreground ,ballman-red))))

   ;; wanderlust
   `(wl-highlight-folder-few-face ((,class (:foreground ,ballman-red-2))))
   `(wl-highlight-folder-many-face ((,class (:foreground ,ballman-red-1))))
   `(wl-highlight-folder-path-face ((,class (:foreground ,ballman-orange))))
   `(wl-highlight-folder-unread-face ((,class (:foreground ,ballman-blue))))
   `(wl-highlight-folder-zero-face ((,class (:foreground ,ballman-fg))))
   `(wl-highlight-folder-unknown-face ((,class (:foreground ,ballman-blue))))
   `(wl-highlight-message-citation-header ((,class (:foreground ,ballman-red-1))))
   `(wl-highlight-message-cited-text-1 ((,class (:foreground ,ballman-red))))
   `(wl-highlight-message-cited-text-2 ((,class (:foreground ,ballman-green+2))))
   `(wl-highlight-message-cited-text-3 ((,class (:foreground ,ballman-blue))))
   `(wl-highlight-message-cited-text-4 ((,class (:foreground ,ballman-blue+1))))
   `(wl-highlight-message-header-contents-face ((,class (:foreground ,ballman-green))))
   `(wl-highlight-message-headers-face ((,class (:foreground ,ballman-red-1))))
   `(wl-highlight-message-important-header-contents ((,class (:foreground ,ballman-green+2))))
   `(wl-highlight-message-header-contents ((,class (:foreground ,ballman-green+1))))
   `(wl-highlight-message-important-header-contents2 ((,class (:foreground ,ballman-green+2))))
   `(wl-highlight-message-signature ((,class (:foreground ,ballman-green))))
   `(wl-highlight-message-unimportant-header-contents ((,class (:foreground ,ballman-fg))))
   `(wl-highlight-summary-answered-face ((,class (:foreground ,ballman-blue))))
   `(wl-highlight-summary-disposed-face ((,class (:foreground ,ballman-fg
                                                         :slant italic))))
   `(wl-highlight-summary-new-face ((,class (:foreground ,ballman-blue))))
   `(wl-highlight-summary-normal-face ((,class (:foreground ,ballman-fg))))
   `(wl-highlight-summary-thread-top-face ((,class (:foreground ,ballman-yellow))))
   `(wl-highlight-thread-indent-face ((,class (:foreground ,ballman-magenta))))
   `(wl-highlight-summary-refiled-face ((,class (:foreground ,ballman-fg))))
   `(wl-highlight-summary-displaying-face ((,class (:underline t :weight bold))))

   ;; which-func-mode
   `(which-func ((,class (:foreground ,ballman-green+4))))

   ;; yascroll
   `(yascroll:thumb-text-area ((,class (:background ,ballman-bg+1))))
   `(yascroll:thumb-fringe ((,class (:background ,ballman-bg+1 :foreground ,ballman-bg+1))))
   )

  ;;; custom theme variables
  (custom-theme-set-variables
   'ballman
   `(ansi-color-names-vector [,ballman-bg ,ballman-red ,ballman-green ,ballman-yellow
                                          ,ballman-blue ,ballman-magenta ,ballman-cyan ,ballman-fg])

   ;; fill-column-indicator
   `(fci-rule-color ,ballman-bg+4))

  ;;; colors for the ansi-term
  (eval-after-load 'term
    `(setq ansi-term-color-vector
         (vector 'unspecified ,ballman-bg ,ballman-red ,ballman-green ,ballman-yellow
                   ,ballman-blue ,ballman-magenta ,ballman-cyan ,ballman-fg))))

(provide-theme 'ballman)
