# /etc/nixos/home-manager/user1-home.nix
{ pkgs, ... }:
{
  home-manager.users.henry = {
    home.stateVersion = "25.05";

    home.packages = with pkgs; [
      code-cursor
      brave
      neovim
      neovide
      protonvpn-gui
      heroic
      gogdl
      rustup
      silver-searcher
      protobuf
      devbox
    ];

    programs.git = {
      enable = true;
      userName = "hcwagner";
      userEmail = "hcwagner@pm.me";
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
