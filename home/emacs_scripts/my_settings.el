;; Show trailing whitespaces.
(setq-default show-trailing-whitespace t)

;; Add line number with space after.
(global-linum-mode t)
(setq linum-format "%d ")

;; Easier file/buffer browsing.
(ido-mode t)

;; Enable mouse
(require 'mouse)
(xterm-mouse-mode t)
(defun track-mouse (e))
(setq mouse-sel-mode t)

;; Width
(setq-default fill-column 80)
