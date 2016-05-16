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

;;ruby-block
(use-package ruby-block
  :config
  (ruby-block-mode t)
  (setq ruby-block-highlight-toggle t))
;;ruby-block

;;fill-column-indicator
(use-package fill-column-indicator
  :config
  (define-globalized-minor-mode 
    global-fci-mode fci-mode (lambda () (fci-mode 1)))
  (global-fci-mode 1))
;;fill-column-indicator

;;undo-tree
(use-package undo-tree)
;;undo-tree

;;helm
(use-package helm-config
  :ensure helm
  :config
  (global-set-key (kbd "C-c C-f") 'helm-find))
;;helm

;;yaml-mode
(use-package yaml-mode)
;;yaml-mode
