{
  description = "hi";
  
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    zen-browser.url = "github:youwen5/zen-browser-flake";
  };
  
  outputs = { self, nixpkgs, home-manager, zen-browser, ... }@inputs: let
    system = "x86_64-linux";
    homeStateVersion = "24.11";
    user = "abdallah";
    cursor = "Posy_Cursor_Mono";
    hosts = [
      { hostname = "mehiz"; stateVersion = "25.05"; }
      { hostname = "mehiz-portable"; stateVersion = "24.11"; }
    ];
    
    makeSystem = { hostname, stateVersion }: nixpkgs.lib.nixosSystem {
      system = system;
      specialArgs = {
        inherit inputs stateVersion hostname user cursor;
      };
      modules = [
        ./system/hosts/${hostname}/configuration.nix
        home-manager.nixosModules.default
      ];
    };
    
    makeHomeConfig = hostname: home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      extraSpecialArgs = {
        inherit inputs homeStateVersion user hostname cursor;
      };
      modules = [
        ./home-manager/home.nix
        ./home-manager/hosts/${hostname}/default.nix
      ];
    };
    
  in {
    nixosConfigurations = nixpkgs.lib.foldl' (configs: host:
      configs // {
        "${host.hostname}" = makeSystem {
          inherit (host) hostname stateVersion;
        };
      }) {} hosts;
    
    homeConfigurations = nixpkgs.lib.foldl' (configs: host:
      configs // {
        "${user}@${host.hostname}" = makeHomeConfig host.hostname;
      }) {} hosts;
  };
}
