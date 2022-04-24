{ pkgs, ... }:
{

  nixpkgs.overlays = [
    (import (builtins.fetchTarball {
      url = https://github.com/nix-community/emacs-overlay/archive/6216f7c7e05c5f7d579dc898219207a8509be910.tar.gz;
      sha256 = "16i90wn14p89vx9zbfsm3yqy93n434fn02n5s1anr6gav4pnp56n";
    }))
  ];

  home-manager.users.errenil.programs.emacs = {
    enable = true;
    package = pkgs.emacsNativeComp;
  };
}
