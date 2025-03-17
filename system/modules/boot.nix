{
  boot = {
    loader = {
      efi = {
        efiSysMountPoint = "/boot";
        canTouchEfiVariables = false;
      };
      grub = {
        enable = true;
        efiSupport = true;
        efiInstallAsRemovable = true;
        device = "nodev";
      };
    };
    plymouth = {
      enable = true;
    };
  };
}

