
(use-package 'auto-save
  :load-path "elpa/auto-save"
  :config
  (auto-save-enable)
  (setq auto-save-silent t)
  (setq auto-save-delete-trailing-whitespace t)
  (setq-default auto-save-timeout 15)
  (setq-default auto-save-interval 100)
  )

(provide 'init-auto-save)
