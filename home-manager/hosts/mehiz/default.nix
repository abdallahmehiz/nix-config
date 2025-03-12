{ config, pkgs, ... }:

{
  imports = [
    ./android-studio.nix
    ./home-packages.nix
  ];
}
