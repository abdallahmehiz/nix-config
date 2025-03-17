{ pkgs, ...}:
{
  time.timeZone = "Africa/Algiers";
  i18n.defaultLocale = "en_US.UTF-8";

  security.sudo.wheelNeedsPassword = false;
  nix.settings.trusted-users = [
    "root"
    "@wheel"
  ];

  services.printing = {
    enable = true;
    stateless = true;
  };
  # Make /bin/bash available
  system.activationScripts.binbash = {
    deps = [ "binsh" ];
    text = ''
      ln -sf /bin/sh /bin/bash
    '';
  };

  console = {
    enable = true;
    font = "Lat2-Terminus16";
    earlySetup = true;
  };
}