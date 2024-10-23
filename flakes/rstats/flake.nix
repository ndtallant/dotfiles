{
  description = "A Nix-flake-based R development environment with support for stan";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system: 
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        devShells.default = pkgs.mkShell {
          nativeBuildInputs = [ pkgs.bashInteractive ];
          buildInputs = with pkgs; [ 
            R 
            cmdstan
            # https://github.com/rmcelreath/rethinking
            (pkgs.rPackages.buildRPackage {
              name = "rethinking";
              src = pkgs.fetchFromGitHub{
                owner = "rmcelreath";
                repo = "rethinking";
                rev = "ac1b3b2cda83f3e14096e2d997a6e30ad109eeee";
                sha256 = "JP4pLhLtmcVgUaRYgxza7w95kDdXfp2barDq2aQ3hk0=";
              };
                propagatedBuildInputs = with pkgs.rPackages; [ 
                    coda 
                    mvtnorm 
                    loo 
                    dagitty 
                    shape
                    # https://github.com/stan-dev/cmdstanr
                    (pkgs.rPackages.buildRPackage {
                      name = "cmdstanr";
                      src = pkgs.fetchFromGitHub{
                        owner = "stan-dev";
                        repo = "cmdstanr";
                        rev = "f2e152b88fde5c2cde01ff078d5715b3b6248628";
                        sha256 = "fJsG4EgAW2DL5CXQboYTsviHYbmRiravZR/JpiJW2wg=";
                      };
                        propagatedBuildInputs = with pkgs.rPackages; [ 
                            R6
                            checkmate
                            data_table
                            jsonlite
                            posterior 
                            processx 
                            rlang
                            withr
                        ];
                    })
                ];
            })
           pkgs.rPackages.codetools
           pkgs.rPackages.rstanarm
          ];
        };
      }
    );
}
