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

;; enable emr in all programming modes
(define-key prog-mode-map (kbd "M-RET") 'emr-show-refactor-menu)
(add-hook 'prog-mode-hook 'emr-initialize)

;; let's add support for multiple cursors
(require 'multiple-cursors)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)


(add-hook 'prog-mode-hook
          (lambda () (local-set-key (kbd "C-c C-c") 'comment-or-uncomment-region)))


(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))


;; smart parens configuration
(require 'smartparens-config)
