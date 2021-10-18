{
  description = "My Darwin configuration";
  
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    darwin = {
      url = "github:LnL7/nix-darwin/master";
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
        ./modules/home.nix
        ./modules/emacs.nix
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
            package = pkgs.nixUnstable;
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