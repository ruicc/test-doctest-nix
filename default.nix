let
  haskellNix = import (builtins.fetchTarball "https://github.com/input-output-hk/haskell.nix/archive/1c2c9cd47f267aacf5472477a9827b18cfe5252a.tar.gz") {};
  pkgs = import haskellNix.sources.nixpkgs-unstable haskellNix.nixpkgsArgs;
  project =  pkgs.haskell-nix.project {
    src = ./.;
    #modules = [{
    #  #packages.test-doctest-nix.components.tests.doctests.configureAllComponents = false;
    #  #packages.test-doctest-nix.components.tests.doctests.postInstall = ''
    #  #  echo PostInstallAAA
    #  #  for i in $out/lib/x86_64-linux-ghc-8.8.4/*.so; do
    #  #    cp -v "$i" $out/lib/$(basename ''${i/-ghc8.8.4/})
    #  #  done
    #  #  echo PostInstallBBB
    #  #  '';
    #}];
  };
in project.test-doctest-nix.checks.doctests
