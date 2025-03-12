{ homeStateVersion, config, pkgs, user, hostname, ... }: {
  imports = [
    ./common-packages.nix
    ./modules
    ./hosts/${hostname}
  ];

  home = {
    username = user;
    homeDirectory = "/home/${user}";
    stateVersion = homeStateVersion;
  };

  programs.home-manager = {
    enable = true;
  };
}
