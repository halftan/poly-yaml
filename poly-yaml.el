;;; poly-yaml.el --- Polymode for YAML. Jinja2 in YAML -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2021 Andy Zhang
;;
;; Author: Andy Zhang <https://github.com/halftan>
;; Maintainer: Andy Zhang <andyzhang@apple.com>
;; Created: October 18, 2021
;; Modified: October 18, 2021
;; Version: 0.0.1
;; Keywords: tools
;; Homepage: https://github.com/andyzhang/poly-yaml
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:

(require 'polymode)

(define-innermode poly-yaml-innermode
  :mode 'jinja2-mode
  :head-mode 'body
  :tail-mode 'body
  :head-matcher "{[%{#][+-]?"
  :tail-matcher "[+-]?[%}#]}")

(define-hostmode poly-yaml-hostmode
  :mode 'yaml-mode)

;;;###autoload (autoload 'poly-yaml-mode "poly-yaml")
(define-polymode poly-yaml-mode
  :hostmode 'poly-yaml-hostmode
  :innermodes '(poly-yaml-innermode))

;; Jinja2 auto mode
(add-to-list 'auto-mode-alist '("\\.ya?ml\\.j2\\'" . poly-yaml-mode))

(provide 'poly-yaml)

;;; poly-yaml.el ends here
