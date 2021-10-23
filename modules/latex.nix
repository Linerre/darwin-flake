# using nix to install latex distribution is both convenient and inconvenient
# if I ever want to add a pkg then I have to rebuild my confi, which seems too much hassle
# I'll try BasicTex.pkg and tlmgr and turn to nix only when that doesn't work well.



{config, pkgs, ... }:
{
  home-manager.users.errenil.programs.texlive = {}
    enable = true;

    extraPackages = tpkgs: {
      inherit (tpkgs)
        # collection-{basic,latex}
        scheme-basic
        
        # a fun comment: https://github.com/mark-gerarts/m/blob/a9737c6935dd267f00d445f4e2fc5cff1ed1bedd/nix/texlive.nix#L9
        # https://raw.githubusercontent.com/NixOS/nixpkgs/master/pkgs/tools/typesetting/tex/texlive/pkgs.nix
        # other essentials
        collection-luatex
        collection-mathscience
        collection-metapost
        collection-xetex
        collection-bibtexextra
        collection-pictures
        collection-bibtexextra
         
    };
  ;
}
