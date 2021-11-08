(use-package magithub
  :after magit
  :custom (magithub-github-hosts
           '("github.azc.ext.hp.com/api/v3")
           "add HP Enterprise to list of github hosts")
  :config (magithub-feature-autoinject t))
