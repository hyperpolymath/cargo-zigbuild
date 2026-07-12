(use-modules (guix packages)
             (gnu packages rust)
             (gnu packages rust-apps)
             (gnu packages zig))

(package
  (name "cargo-zigbuild")
  (version "0.1.0")
  (source (local-file "." "recursive? #t"))
  (build-system cargo-build-system)
  (inputs
   `(("zig" ,zig)
     ("rust" ,rust)))
  (synopsis "Compile Cargo project with zig as linker")
  (description "cargo-zigbuild is a tool to cross-compile Cargo projects with zig as the linker.")
  (home-page "https://github.com/hyperpolymath/cargo-zigbuild")
  (license license:mpl2.0))
