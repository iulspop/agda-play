let
  nixpkgs = import <nixpkgs> {};
  pkgs = nixpkgs.pkgs;

in
  pkgs.mkShell {
    name = "agda-project";

    buildInputs = [
      pkgs.agda
      pkgs.agdaPackages.standard-library
    ];

    shellHook = ''
      echo "Entering Agda development environment"
    '';
  }
