{ pkgs, ... }:
{
  nixpkgs.overlays = [
    (import (builtins.fetchTarball {
      url = https://github.com/nix-community/emacs-overlay/archive/5b6fc7a4ef21e8ca787429339476b82165b05f3d.tar.gz;
      sha256 = "1fq71779vz6cmgfbziqwkpyzdc6zr3am3ls7x5l529rvbnzajgjk";
    }))
  ];

  home-manager.users.errenil.programs.emacs = {
    enable = true;
    package = pkgs.emacsGcc;
  };
}
