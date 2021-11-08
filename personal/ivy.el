(use-package smex
  :init (require 'smex))

;; https://emacs.stackexchange.com/questions/36745/enable-ivy-fuzzy-matching-everywhere-except-in-swiper
(use-package ivy
  :custom ivy-re-builders-alist '((swiper . ivy--regex-plus)
                                  (t      . ivy--regex-fuzzy))
  "make regex the default ivy matcher, except when using swiper"
  :chords (("xx" . counsel-M-x)))
