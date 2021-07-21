let
  haskellNix = import (builtins.fetchTarball "https://github.com/input-output-hk/haskell.nix/archive/1c2c9cd47f267aacf5472477a9827b18cfe5252a.tar.gz") {};
  pkgs = import haskellNix.sources.nixpkgs-unstable haskellNix.nixpkgsArgs;
  project =  pkgs.haskell-nix.project {
    src = ./.;
  };
in project.test-doctest-nix.checks.doctests
