{ pkgs, ... }:
{
  home.packages = with pkgs; [
    heroic
    legendary-heroic
    prismlauncher
  ];
}
