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
}
