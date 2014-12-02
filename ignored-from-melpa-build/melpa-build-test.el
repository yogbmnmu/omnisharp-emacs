(require 'package)
(require 'files)

(let ((travis-branch (getenv "TRAVIS_BRANCH")))
  (print "Current branch")
  (print (or travis-branch "develop")))

;; should be run in the repo root directory

(setq package-archives
      '(("melpa" . "http://melpa.org/packages/")))

(package-initialize)
(package-refresh-contents)

(let ((file (expand-file-name
             (car (file-expand-wildcards "melpa/packages/omnisharp-*.tar")))))
  (message "installing file %s" file)
  (package-install-file file))


