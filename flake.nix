{
  description = "Hakuren's flake for nixos and home-manager";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-25.11";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = {
    self,
    nixpkgs,
    nixpkgs-stable,
    home-manager,
    nixvim,
    stylix,
    ...
  }@inputs:
    let
      pkgs-stable = import nixpkgs-stable {
        system = "x86_64-linux";
        config.allowUnfree = true;
      };
    in
    {
      # When rebuilding, nixos will look for the configuration in nixosConfigurations.HOSTNAME, which we'll define here as a part of the flake, nixosSystem is the function that creates the system
      nixosConfigurations.nixLotus = nixpkgs.lib.nixosSystem
      {
        # specialArgs allows to pass extra arguments to all modules, an obvious use case it to pass inputs
        specialArgs = { inherit inputs; };

        modules = [
          ./modules/core/config.nix
          home-manager.nixosModules.home-manager
          inputs.stylix.nixosModules.stylix
          {
            home-manager = {
              backupFileExtension = "homeBackup";
              useGlobalPkgs = true;
              useUserpackages = true;
              extraSpecialArgs = { inherit inputs pkgs-stable; };
              users.hakuren = {
                imports = [
                  ./modules/home/home.nix
                  nixvim.homeModules.nixvim
                ];
              };
            };
          }
        ];
      };
    };
}
