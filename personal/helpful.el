(use-package helpful
  :bind
  ;; recommended
  ("C-h f" . helpful-callable)
  ("C-h v" . helpful-variable)
  ("C-h k" . helpful-key)
  ("C-c C-d" . helpful-at-point)
  ;; optional
  ("C-h F" . helpful-function)
  ("C-h C" . helpful-command)
  :config
  (setq counsel-describe-function-function #'helpful-callable)
  (setq counsel-describe-variable-function #'helpful-variable))
