{
  description = "My Darwin configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    darwin = {
      url = "github:LnL7/nix-darwin/master";
      # inherit nixpkgs
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, darwin, home-manager, ... }@inputs: {
    darwinConfigurations.mello = darwin.lib.darwinSystem {
	    system = "aarch64-darwin";
	    modules = [
	      ./modules/mac.nix
	      ./modules/global.nix
        ./modules/pkgs.nix
        ./modules/git.nix
        ./modules/zsh.nix
        ./modules/emacs.nix
        ./modules/alacritty.nix
        home-manager.darwinModule
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
          };
        }
        ({ pkgs, lib, ... }: {
          services.nix-daemon.enable = true;
          nixpkgs = {
            config.allowUnfree = true;
          };
          nix = {
            extraOptions = ''
                           system = aarch64-darwin
                           experimental-features = nix-command flakes
                           '';
          };
        })
      ];
    };
  };
}
