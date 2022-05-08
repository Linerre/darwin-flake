{pkgs, lib, config, home-manager, nix-darwin, ...}: {
  home-manager.users.errenil.home.packages = with pkgs; [
    # cli
    aspell
    aspellDicts.en
    aspellDicts.en-science
    aspellDicts.en-computers
    figlet
    ffmpeg
    fzf
    ghostscript
    autoconf
    gnumake
    cmake
    imagemagick
    lf
    maven
    mpv
    htop
    neofetch
    openssl
    postgresql_14
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


    # programming languages
    # clojure
    jdk17_headless
    clojure
    leiningen

    # go
    go_1_17
    # python
    python3
    python39Packages.pip
    python39Packages.pipx
    # conda-shell is not supported on aanrch-6
    # conda

    # js
    nodejs-16_x

    # rust 1.55, far left behind the official 1.59.0!
  ];
}
