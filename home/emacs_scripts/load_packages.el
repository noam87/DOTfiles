(setq my-package-list
      '(neotree
	auto-complete
	ruby-block
	elixir-mode
	find-file-in-project
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

;; find-file-in-project
(autoload 'find-file-in-project "find-file-in-project" nil t)
(autoload 'find-file-in-project "find-file-in-project-by-selected" nil t)
(autoload 'find-file-in-project "find-directory-in-project-by-selected" nil t)
;; Key bindings
(global-set-key (kbd "C-c C-f") 'find-file-in-project-by-selected)
;; find-file-in-project

;;ruby-block
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)
;;ruby-block
