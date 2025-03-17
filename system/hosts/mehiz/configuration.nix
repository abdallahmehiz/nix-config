{ pkgs, stateVersion, hostname, ... }:

{
  imports = [
    ./boot.nix
    ./docker.nix
    ./gaming.nix
    ./hardware-configuration.nix
    ./local-packages.nix
    ./qemu.nix
    ./ssh.nix
    ../../modules
  ];

  environment.systemPackages = [ pkgs.home-manager ];

  networking.hostName = hostname;

  system.stateVersion = stateVersion;
}

