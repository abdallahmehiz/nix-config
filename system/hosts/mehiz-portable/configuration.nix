{ pkgs, stateVersion, hostname, ... }:

{
  imports = [
    ./boot.nix
    ./hardware-configuration.nix
    ./local-packages.nix
    ../../modules
  ];

  environment.systemPackages = [ pkgs.home-manager ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;
}

