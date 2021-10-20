{pkgs, lib, config, home-manager, nix-darwin, ...}: {
  home-manager.users.errenil.home.packages = with pkgs; [
    # cli
    imagemagick
    mpv
    neofetch
    fzf
    openssl
    ranger
    ripgrep
    sqlite
    tmux
    tokei
    tree
    unzip
    wget
    youtube-dl

    # clang collides with gcc so make it per-user
    ccls
    clang

    # editors
    neovim

    # programming languages
    # clojure
    openjdk16
    clojure
    leiningen

    # python
    python3

    # js
    nodejs-16_x
  ];

  # my own zsh
  home-manager.users.errenil.programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    enableSyntaxHighlighting = true;
    cdpath = [
      "$HOME/projects"
      "$HOME/projects/emacs.d"
      "$HOME/projects/org"
      "$HOME/projects/vim"
    ];
    defaultKeymap = "emacs";
    dirHashes = {
      config = "$HOME/projetcs/voidrice/.config";
      suckless = "$HOME/projetcs/suckless/";
      bks= "$HOME/Documents/books/";
    };
    dotDir = ".config/zsh";
    shellAliases = {
      # moving
      ".." = "cd ..";
      "..." = "cd ../..";
      "...." = "cd ../../..";

      # open programms
      v = "nvim";
      n = "nvim";
      rr = "ranger";
      e = "emacs -nw";

      # open, source dotfiles 
      nz = "nvim $ZDOTDIR/.zshrc";
      sz = "source $ZDOTDIR/.zshrc";
      
      ls = "ls -G";
      ll = "ls -alh";
      la = "ls -a";
      lla = "ls -alhF";
    };
    profileExtra = "typeset -U PATH path";
    initExtraFirst = ''
      ZPROFILE="$HOME/.config/zsh/.zprofile"
      if [[ -f $ZPROFILE ]]; then
          source $ZPROFILE
      else
          echo ".zprofile not found; $PATH may not be set properly."
      fi
      '';
    initExtra = ''
      # prompt
      if [ $(whoami) = 'errenil' ]; then
              PS1="%F{magenta}> %f"
          PS2="%F{yellow}>> %f"
          RPS1="%(?..(%?%)) %B%F{lightgreen}%3c %f%b"
      else
          PS1="%F{red}%n%f %~ "
          PS2="%F{yellow}>> %f"
          RPS1="%(?..(%?%))"
      fi

      # options
      setopt AUTO_CD
      setopt HIST_VERIFY
      '';
  };

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
