{pkgs, lib, config, home-manager, nix-darwin, ...}: {
  home-manager.users.errenil.home.packages = with pkgs; [
    # cli
    ghostscript
    fzf
    imagemagick
    mpv
    neofetch
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

    # gui
    skim

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
}
