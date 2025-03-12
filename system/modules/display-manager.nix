{ pkgs, user, ...}:
{
  services = {
    xserver.enable = true;
    displayManager.sddm = {
      enable = true;
      # defaultUser = user;
      autoNumlock = true;
      wayland.enable = true;
    };
  };
}
