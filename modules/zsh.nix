{pkgs, ...}:
let
  # texlive bin path
  tlbp = ~/.local/texlive/2021basic/bin/universal-darwin;
  rust = ~/.cargo/bin;
in {
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
    ];
    defaultKeymap = "emacs";
    dirHashes = {
      config = "$HOME/projetcs/voidrice/.config";
      bks= "$HOME/Documents/books/";
    };
    dotDir = ".config/zsh";
    shellAliases = {
      # moving
      ".." = "cd ..";
      "..." = "cd ../..";
      "...." = "cd ../../..";

      # open programms
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
    initExtraFirst = ''
      ZPROFILE="$HOME/.config/zsh/.zprofile"
      if [[ -f $ZPROFILE ]]; then
          source $ZPROFILE
      else
          echo ".zprofile not found; $PATH may not be set properly."
      fi
      export NPM_CONFIG_USERCONFIG=$HOME/.config/npm/npmrc
      export PROJECTS_HOME=$HOME/projects
      export NODE_MIRROR=https://mirrors.ustc.edu.cn/node/
      export PATH=${toString rust}:$HOME/.local/bin:${toString tlbp}:$PATH
      '';
    initExtra = ''
      # prompt
      if [ $(whoami) = 'errenil' ]; then
              PS1="%F{magenta}> %f"
          PS2="%F{yellow}>> %f"
          RPS1="%(?..%F{red}(%?%))%f %B%F{green}%3c %f%b"
      else
          PS1="%F{red}%n%f %~ "
          PS2="%F{yellow}>> %f"
          RPS1="%(?..(%?%))"
      fi

      # options
      setopt AUTO_CD
      setopt HIST_VERIFY
      '';
      profileExtra = "typeset -U PATH path";
  };
}
