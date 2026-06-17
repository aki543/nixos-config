{
  description = "NixOS configuration"
  inputs = {
    nixpkgs.url = "github.NixOS/nixpkgs/nixos-25.11;"

    home-manager = {
      url = "";
      inputs.nixpkgs.follows = "nixpkgs"
    }
  }
}

