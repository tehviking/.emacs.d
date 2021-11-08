(use-package frontside-javascript
  :init (frontside-javascript))

(use-package jest-test-mode
  :diminish
  :hook (typescript-mode js-mode typescript-tsx-mode))

(use-package mocha-snippets
  :hook ((js-mode . yas-minor-mode)
         (typescript-mode . yas-minor-mode)
         (typescript-tsx-mode . yas-minor-mode)))

(use-package eslint-fix)
