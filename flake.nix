{
  description = "NixOS configuration with modular users and home-manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05"; # Pin to NixOS 24.05
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs"; # Ensure home-manager uses the same nixpkgs
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }:
  let
    system = "x86_64-linux"; # Adjust for your system (e.g., "aarch64-linux")
  in {
    nixosConfigurations.expanse = nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
        ./configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.backupFileExtension = "backup";
        }
      ];
    };
  };
}
