(prelude-require-package 'use-package)
(require 'use-package-ensure)
(setq use-package-always-ensure t)
(use-package use-package-chords
  :config (key-chord-mode 1))
