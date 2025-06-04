# /etc/nixos/users/default.nix
{ pkgs, ... }:
{
  imports = [
    ./henry.nix
  ];

  # Common user settings
  users.defaultUserShell = pkgs.fish;
}
