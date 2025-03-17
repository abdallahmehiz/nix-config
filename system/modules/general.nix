{ pkgs, ...}:
{
  time.timeZone = "Africa/Algiers";
  i18n.defaultLocale = "en_US.UTF-8";
  boot.kernelPackages = pkgs.linuxPackages_zen;

  security.sudo.wheelNeedsPassword = false;
  nix.settings.trusted-users = [
    "root"
    "@wheel"
  ];

  environment.sessionVariables = rec {
    TERMINAL = "kitty";
    EDITOR = "nvim";
    XDG_BIN_HOME = "$HOME/.local/bin";
    PATH = [
      "${XDG_BIN_HOME}"
    ];
  };

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