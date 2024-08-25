;; evil-collection-vtable.el -- Bindings for `vtable' -*- lexical-binding: t; -*-

;;; Commentary:
;;; Bindings for `vtable' and `vtable-heading'.

;;; Code:
(require 'evil-collection)

(defvar vtable-header-mode-map)
(defconst evil-collection-vtable-maps '(vtable-header-mode-map))

(declare-function vtable-previous-column "vtable")
(declare-function vtable-next-column "vtable")

(defun evil-collection-vtable-setup ()
  "Set up `evil' bindings for `vtable'."
  (evil-collection-define-key 'normal 'vtable-header-mode-map
    (kbd "h") 'vtable-previous-column
    (kbd "l") 'vtable-next-column)
  (evil-set-initial-state 'vtable-header-mode 'normal))

(provide 'evil-collection-vtable)
;;; evil-collection-vtable.el ends here


