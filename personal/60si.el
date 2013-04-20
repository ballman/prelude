(defun arb-replacer (to-search to-replace)
  ""
  (while (search-forward to-search nil t)
    (replace-match to-replace nil nil)
    )
  )

(defun si-tabify-tokens ()
  "SpeechInk funciton to replace whitespage after speaker tokens with a tab."
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (while (re-search-forward "^\\(Q\\|A\\|B\\|C\\|D\\|E\\|INT\\|ATTY\\):[ \t]+" nil t)
      (replace-match "\\1:\t" nil nil))
    )
  )

(defun si-commas-before-hesitations ()
  "SpeechInk funciton to ensure, uh and, um are preceeded by a comma"
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (while (re-search-forward "\\([^,:\. ]\\) \\(uh\\|um\\)")
      (replace-match "\\1, \\2" nil nil))
    )
  )


(setq si-replace-us
      '(("ah" "uh")
        ("eh" "uh")
        ("social security number" "Social Security Number")
        ("driver's side" "driver side")
        ("passenger's side" "passenger side")
        ("its" "it's")
        )
      )


(defun si-replace-in-glossary ()
  ""
  (interactive)
  (save-excursion
    (dolist (element si-replace-us)
      (goto-char (point-min))
      (arb-replacer (nth 0 element) (nth 1 element)))))
