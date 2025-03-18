{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    wineWowPackages.stable
    wine
    wine64
    wineWowPackages.staging
    winetricks
    wineWowPackages.waylandFull
  ];
}
