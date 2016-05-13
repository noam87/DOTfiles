(setq my-package-list
      '(neotree
	gotham-theme
	suscolors-theme
	quasi-monochrome-theme
	monochrome-theme))
(mapc #'package-install my-package-list)

;; neotree
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
;; neotree
