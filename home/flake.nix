{
  description = "Home Manager flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    stylix.url = "github:danth/stylix/release-24.11";
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
  };

  outputs = inputs@{ 
      home-manager,
      stylix,
      nixpkgs, 
      nixpkgs-unstable,
      ...
  } : let
      system = "x86_64-linux";
    in {
      homeConfigurations."hellcat@satella" = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs {
          inherit system;
        };
        extraSpecialArgs = {
          inherit system;
          inherit inputs;
        };
        modules = [
          stylix.homeManagerModules.stylix
          ./home.nix
        ];
    };
  };
}
