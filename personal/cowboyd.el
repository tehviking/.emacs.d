;;(disable-theme 'zenburn)
(global-set-key (kbd "<s-return>") 'maximize-frame)

(add-hook 'coffee-mode-hook
          (lambda () (local-set-key (kbd "H-r") 'coffee-compile-buffer)))

;; YAS snippets everywhere bro.
(yas-global-mode)

;; use the company-mode
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(push 'company-robe company-backends)
(global-set-key (kbd "<C-s-268632064>") 'company-complete)

;; Enable whitespace mode for code
(add-hook 'prog-mode-hook 'prelude-enable-whitespace)
(add-hook 'ruby-mode-hook 'prelude-enable-whitespace)
(add-hook 'enh-ruby-mode-hook 'prelude-enable-whitespace)
(add-hook 'coffee-mode-hook 'prelude-enable-whitespace)

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

;; make the default search use Ag
(define-key projectile-mode-map (kbd "s-g") 'projectile-ag)

(add-hook 'prog-mode-hook
          (lambda () (local-set-key (kbd "C-c C-c") 'comment-or-uncomment-region)))


;; make sure that handlebars templates load in web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
;; Using web-mode for editing plain HTML files can be done this way
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))


;;(add-to-list 'auto-mode-alist '("Gemfile" . enh-ruby-mode))

;; smart parens configuration
(require 'smartparens-config)
(smartparens-global-mode)

;; drag stuff rules!
(drag-stuff-global-mode)

;; I use enh-ruby-mode and not ruby mode, but I gotta have my snippets and my comment-or-uncomment!
(add-hook 'enh-ruby-mode-hook
          (lambda() (yas-activate-extra-mode 'ruby-mode)))
(add-hook 'enh-ruby-mode-hook
          (lambda () (local-set-key (kbd "C-c C-c") 'comment-or-uncomment-region)))




;; Disable smartparens-mode when using multiple cursors. they don't play well together
(add-to-list 'mc/unsupported-minor-modes 'smartparens-mode)


;; Yay autocomplete
(require 'auto-complete-config)
(add-hook 'enh-ruby-mode-hook `auto-complete-mode)

;; Twitter
(setq twittering-icon-mode t)
(setq twittering-use-icon-storage t)
