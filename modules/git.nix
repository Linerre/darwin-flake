{pkgs, ...}:
{
  home-manager.users.errenil.programs.git = {
    enable = true;
    userName = "Linerre";
    userEmail = "leon.errelin@outlook.com";
    aliases = {
      br = "branch";
      cm = "commit";
      co = "checkout";
      st = "status";
      sw = "switch";
    };
    delta = {
      enable = true;
      options = {
        syntax-theme = "Nord";
      };
    };
    ignores = ["*~" "*.swap" ".DS_Store" "*.swp"];
  };
}
