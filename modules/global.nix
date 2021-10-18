{lib, config, pkgs, ... }:
{
	# system-wide pkgs for all users
	environment.systemPackages = with pkgs; [
		curl
		fzf
		htop
		ripgrep

		gcc
		git
		vim
	];
	
	programs.zsh = {
		enable = true;
		enableCompletion = true;
		enableFzfCompletion = true;
		enableFzfGit = true;
		enableFzfHistory = true;
		enableSyntaxHighlighting = true;
	};
}
