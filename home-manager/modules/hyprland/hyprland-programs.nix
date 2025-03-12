{pkgs, ...}:
{
  home.packages = with pkgs; [
    hyprcursor
    hypridle
    hyprlock
    hyprshot
    hyprsunset
    pyprland
  ];
}
