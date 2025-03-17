# root config for the many times i can't use flakes
{pkgs, ...}:
{
  imports = [
    ./system/hosts/HOSTNAME/configuration.nix
    ./system/modules
  ];
}