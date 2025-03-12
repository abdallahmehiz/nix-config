{pkgs, ...}:
{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  programs.nix-ld = {
    enable = true;
    libraries = with pkgs; [
      xorg.libX11
    ];
  };
}

