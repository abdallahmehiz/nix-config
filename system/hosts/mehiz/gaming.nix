{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  programs.steam = {
    enable = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
  };
  # For Lutris
  hardware.graphics.enable32Bit = true;
}
