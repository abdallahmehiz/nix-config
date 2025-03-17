{ pkgs, ... }:
{
  programs.hyprland = {
    enable = true;
    withUWSM = false;
    xwayland.enable = true;
  };

services.gnome.gnome-keyring.enable = true;
  security.pam.services.hyprlock = {};
}
