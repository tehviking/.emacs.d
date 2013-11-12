;;(disable-theme 'zenburn)
(global-set-key (kbd "<s-return>") 'maximize-frame)

(add-hook 'coffee-mode-hook
          (lambda () (local-set-key (kbd "H-r") 'coffee-compile-buffer)))

;; YAS snippets everywhere bro.
(yas-global-mode)

;; enable colors in compilation buffer
(require 'ansi-color)
(defun colorize-compilation-buffer ()
  (toggle-read-only)
  (ansi-color-apply-on-region (point-min) (point-max))
  (toggle-read-only))
(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

;; let's add support for multiple cursors
(require 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)


(add-hook 'prog-mode-hook
          (lambda () (local-set-key (kbd "C-c C-c") 'comment-or-uncomment-region)))


(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))

;; smart parens configuration
(require 'smartparens-config)
(smartparens-global-mode)

;; drag stuff rules!
(drag-stuff-global-mode)

;; I use enh-ruby-mode and not ruby mode, but I gotta have my snippets!
(add-hook 'enh-ruby-mode-hook
          (lambda() (yas-activate-extra-mode 'ruby-mode)))

;; Disable smartparens-mode when using multiple cursors. they don't play well together
(add-to-list 'mc/unsupported-minor-modes 'smartparens-mode)


;; Yay autocomplete
(require 'auto-complete-config)
