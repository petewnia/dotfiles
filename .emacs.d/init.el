(when (member "Menlo" (font-family-list))
  (set-frame-font "Menlo-16" t t))

(setq fancy-splash-image "~/.emacs.d/Splash.svg")

(if (display-graphic-p)
    (setq initial-frame-alist
	  '(
	    (tool-bar-lines . 0)
	    (width . 108)
	    (height . 36)
	    (background-color . "MintCream")
	    (left . 96))))
(setq initial-fram-alist '( (tool-bar-lines . 0)))

(setq default-frame-alist initial-frame-alist)

