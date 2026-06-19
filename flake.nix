{
  description = "NixOS configuration"
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable;"

    home-manager = {
      url = "github:nix-communitiy/home-manager";
      inputs.nixpkgs.follows = "nixpkgs"
    };
  };

  outputs = { self, nix-pkgs, home-manager }:
    let
      system = "x86-64-linux";
      hostname = "nixos";
      username = "aki543";
    in {
      nixosConfiguration.${hostname} = nixpkgs.lib.nixosSystem {
        inherit system;

        modules = [
          ./configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.users.${username} = import ./home.nix;
          }
        ];
      };
    };
}

