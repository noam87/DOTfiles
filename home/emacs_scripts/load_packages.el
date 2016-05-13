(setq my-package-list
      '(neotree
	auto-complete
	elixir-mode
	gotham-theme
	quasi-monochrome-theme))
(mapc #'package-install my-package-list)

;; neotree
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
;; neotree

;; auto-complete
(require 'auto-complete-config)
(ac-config-default)
;; auto-complete

;; elixir-mode
(require 'elixir-mode)
;; elixir-mode
