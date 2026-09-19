;; SPDX-License-Identifier: MPL-2.0
;; Guix development environment.
;; Usage: guix shell -D -f build/guix.scm

(use-modules (guix packages)
             (guix build-system gnu)
             (guix licenses)
             (gnu packages base)
             (gnu packages bash)
)

(package
  (name "cargo-zigbuild")
  (version "0.1.0")
  (source #f)
  (build-system gnu-build-system)
  (inputs (list coreutils bash ))
  (synopsis "cargo-zigbuild")
  (description "cargo-zigbuild — part of the hyperpolymath ecosystem.")
  (home-page "https://github.com/hyperpolymath/cargo-zigbuild")
  (license ((@@ (guix licenses) license) "MPL-2.0" "https://github.com/hyperpolymath/palimpsest-license")))
