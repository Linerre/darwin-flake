{ pkgs, ... }:
{
  nixpkgs.overlays = [
    (import (builtins.fetchTarball {
      url = https://github.com/nix-community/emacs-overlay/archive/097ce02d1c8d60afe55da8274b018fb7107584eb.tar.gz;
      sha256 = "1y2xj5wsfan9hwqd2jw0aris0dylbc3jnkd153qbfnb3ybzv77v8";
    }))
  ];
  
  home-manager.users.errenil.programs.emacs = {
    enable = true;
    package = pkgs.emacsGcc;
  };
}
