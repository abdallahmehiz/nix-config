{
  boot.loader = {
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot";
    };
    grub = {
      enable = true;
      efiSupport = true;
      # efiInstallAsRemovable = true;
      device = "nodev";
    };
  };
}

