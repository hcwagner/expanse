# /etc/nixos/home-manager/user1-home.nix
{ pkgs, ... }:
{
  home-manager.users.henry = {
    home.stateVersion = "25.05";

    home.packages = with pkgs; [
      brave
      neovim
      neovide
    ];

    programs.git = {
      enable = true;
      userName = "hcwagner";
      userEmail = "hcwagneriv@gmail.com";
    };

    programs.fish = {
      enable = true;
      shellAliases = {
        ll = "ls -l";
	vi = "nvim";
      };
    };
  };
}
