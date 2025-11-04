{
  description = "Typst flake template";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";

    press.url = "github:RossSmyth/press";
    typst-live.url = "github:ItsEthra/typst-live";

    beleap-fonts.url = "github:BeLeap/nix-fonts";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      press,
      typst-live,
      beleap-fonts,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [
            (import press)
            (import beleap-fonts)
          ];
        };
      in
      rec {
        packages.default = pkgs.buildTypstDocument {
          name = "main";
          src = ./.;
          fonts = with pkgs; [
            nanum-myeongjo
          ];

          typstEnv = p: [ p.polylux ];
        };
        devShells.default = pkgs.mkShell {
          inputsFrom = [ packages.default ];
          packages = with pkgs; [
            tinymist
            typstyle
            (typst-live.packages.${system}.default)
          ];
        };
      }
    );
}
