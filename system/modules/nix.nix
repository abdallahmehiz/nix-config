{pkgs, ...}:
{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  programs.nix-ld = {
    enable = true;
    libraries = with pkgs; [
      xorg.libX11
      libsecret
    ];
  };

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 30d";
  };
  nix.optimise.automatic = true;
}

