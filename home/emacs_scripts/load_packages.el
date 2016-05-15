(setq use-package-always-ensure t)

(use-package gotham-theme)
(use-package quasi-monochrome-theme)

;; neotree
(use-package neotree
  :config
  (global-set-key [f8] 'neotree-toggle))
;; neotree

;; auto-complete
(use-package auto-complete-config
  :ensure auto-complete
  :config
  (ac-config-default))
;; auto-complete

;; elixir-mode
(use-package elixir-mode)
;; elixir-mode

;; find-file-in-project
(use-package find-file-in-project
  :ensure find-file-in-project
  :config
  (global-set-key (kbd "C-c C-f") 'find-file-in-project-by-selected))
(use-package find-file-in-project :config)
;; find-file-in-project

;;ruby-block
(use-package ruby-block
  :config
  (ruby-block-mode t)
  (setq ruby-block-highlight-toggle t))
;;ruby-block
