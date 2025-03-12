{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;
  programs.steam = {
    enable = true;
    localNetworkGameTransfers.openFirewall = true;
  };
}
