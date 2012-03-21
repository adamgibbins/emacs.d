(add-to-list 'load-path "~/.emacs.d/elpa")

(require 'package)

(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar elpa-packages '(evil
                        magit))

(dolist (p elpa-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(defun initialize-packages ()
  (require 'evil))
