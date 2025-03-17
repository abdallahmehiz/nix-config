{ pkgs, ...}:
{
  services = {
    xserver.enable = true;
    # desktopManager.plasma6.enable = true;
    # xserver.desktopManager.gnome.enable = true;
    displayManager.sddm = {
      enable = true;
      # defaultUser = user;
      autoNumlock = true;
      wayland.enable = true;
    };
    gnome.gnome-keyring.enable = true;
  };

  security.pam.services.sddm.enableGnomeKeyring = true;

  programs.hyprland = {
    enable = true;
    withUWSM = false;
    xwayland.enable = true;
  };
}