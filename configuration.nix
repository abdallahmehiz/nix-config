# root config for the many times i can't use flakes
{ pkgs, ... }:
{
  imports = [
    ./system/hosts/mehiz/configuration.nix
    ./system/modules
  ];
}
