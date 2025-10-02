{
  description = "My flake config";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-25.05";
    # home-manager, used for managing user configuration
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      # The `follows` keyword in inputs is used for inheritance.
      # Here, `inputs.nixpkgs` of home-manager is kept consistent with
      # the `inputs.nixpkgs` of the current flake,
      # to avoid problems caused by different versions of nixpkgs.
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim.url = "path:./modules/home-manager/nixvim/";
  };

  outputs = {self, nixpkgs, home-manager, nixvim, ...}@inputs:
    let 
      lib = nixpkgs.lib;
    in {
    nixosConfigurations = {
      desktop = lib.nixosSystem {
        system = "x86_64-linux";
	modules = [
	  ./hosts/desktop/configuration.nix

	  # make home-manager as a module of nixos
          # so that home-manager configuration will be deployed automatically when executing `nixos-rebuild switch`
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.users.david = import ./hosts/desktop/home.nix;

            # Also pass inputs to home-manger modules
            home-manager.extraSpecialArgs = {inherit inputs;};
          }
	];
      };
    };
  };
}
