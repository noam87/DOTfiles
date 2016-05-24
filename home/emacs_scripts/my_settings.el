;; Show trailing whitespaces.
(setq-default show-trailing-whitespace t)

;; Add line number with space after.
(global-linum-mode t)
(setq linum-format "%d ")

;; Show column count
(setq column-number-mode t)

;; Easier file/buffer browsing.
(ido-mode t)

;; Enable mouse
(require 'mouse)
(xterm-mouse-mode t)
(defun track-mouse (e))
(setq mouse-sel-mode t)

;; Width
(setq-default fill-column 80)

;;Indendation
(setq-default indent-tabs-mode nil)

;;Keep working directory
;;(add-hook 'find-file-hook
;;          (lambda ()
;;            (setq default-directory command-line-default-directory)))

;;Copy from system clipboard
(setq x-select-enable-clipboard t)
